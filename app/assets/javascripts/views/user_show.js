Wandergram.Views.UserShow = Backbone.CompositeView.extend({
  template: JST["user_show"],
  className: "userShow",

  events: {
    "click .disable-panning": "togglePanning"
  },

  initialize: function(){

    window.scrollTo(0,0);
    this.listenTo(this.model, "sync", this.addHeaderView.bind(this, this.model));
    var posts = this.model.posts();
    posts.each(function(post){
      this.addGridPhotoView(post);
    }.bind(this));

    this.listenTo(this.model.posts(), "add", this.addGridPhotoView);

    this.listenTo(this.model, "add", this.addHeaderView);
    this.listenTo(this.model, "remove", this.removeHeaderView);

    this.listenTo(this.model, "add", this.addGridPhotoView);
    this.listenTo(this.model, "remove", this.removeGridPhotoView);
    this.mapView = new Wandergram.Views.MapShow({
      collection: posts
    });

    this._info_window = null;
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    this.attachSubviews();
    this.addSubview("#map-container", this.mapView);
    this.mapView.initMap();
    return this;
  },

  addHeaderView: function(user){
    if(!this.userHeader){
      this.userHeader = new Wandergram.Views.UserHeader(
        {model: user}
      );
      this.addSubview('.prof-page-header', this.userHeader);
    }
  },

  removeHeaderView: function(user){
    this.removeModelSubview('.prof-page-header', user);
  },

  addGridPhotoView: function(post){
    this.$el.find(".add-photo-msg").empty();
    var subview = new Wandergram.Views.GridPhoto({
      model: post,
      map: this.mapView
    });
    this.addSubview('.posts-grid', subview);
  },

  removeGridPhotoView: function(post){
    this.removeModelSubview('.posts-grid', post);
  },

  togglePanning: function(){
    if (this.mapView._DisabledPanning) {
     this.mapView._DisabledPanning = false;
     this.$el.find(".disable-panning").text("Panning Enabled");
    } else {
     this.mapView._DisabledPanning = true;
     this.$el.find(".disable-panning").text("Panning Disabled");
    }
  }


});
