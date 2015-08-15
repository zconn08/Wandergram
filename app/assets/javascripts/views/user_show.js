Wandergram.Views.UserShow = Backbone.CompositeView.extend({
  template: JST["user_show"],
  className: "userShow",

  initialize: function(){
    // this.listenTo(this.model, "sync", this.render);
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
    var subview = new Wandergram.Views.UserHeader(
      {model: user}
    );
    this.addSubview('.prof-page-header', subview);
  },

  removeHeaderView: function(user){
    this.removeModelSubview('.prof-page-header', user);
  },

  addGridPhotoView: function(post){
    var subview = new Wandergram.Views.GridPhoto({
      model: post,
      map: this.mapView
    });
    this.addSubview('.posts-grid', subview);
  },

  removeGridPhotoView: function(post){
    this.removeModelSubview('.posts-grid', post);
  },


});
