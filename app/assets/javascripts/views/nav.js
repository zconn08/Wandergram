Wandergram.Views.Nav = Backbone.View.extend({
  template: JST['nav'],

  events: {
    "click .upload": "upload",
    "click .logout-link": "logOut"
  },

  initialize: function(options){
    this.router = options.router;
    this.listenTo(this.router, "route", this.handleRoute);
  },

  logOut: function(e){
    e.preventDefault();
    $.ajax({
      type: "delete",
      url: "/session",
      success: function () {
        window.location = "/";
      }
    });
  },

  render: function(){
    this.$el.html(this.template());
    return this;
  },

  handleRoute: function(routeName, params){
    this.$el.find(".container-fluid").removeClass("show");
    this.$el.find(".logout-link").addClass("inactive");
    this.$el.find(".username-link").removeClass("inactive");
    if (routeName === "userShow" || routeName === "userHome" ) {
      this.$el.find(".container-fluid").addClass("show");
      this.$el.find(".logout-link").removeClass("inactive");
      this.$el.find(".username-link").addClass("inactive");
    }
  },

  setTransformation: function(url, transform){
    var newUrl = url.substr(0, url.indexOf("/image/upload/")) +
                 "/image/upload/" +
                 transform + "/" +
                 url.substr(url.indexOf("/image/upload/") + 14, url.length);
    return newUrl;
  },

  upload: function(e){
    e.preventDefault();
    var image = new Wandergram.Models.Image();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, function(error, result){
      var data = result[0];
      var newUrl = this.setTransformation(data.url, "w_640,h_640" );
      var newThumb = this.setTransformation(data.thumbnail_url, "w_152,h_152");
      image.set({url: newUrl, thumbnail_url: newThumb});
      console.log(data.url)
      if (error === null) {
        image.save({}, {
          success: function(){
            Wandergram.Collections.images.add(image);
            Backbone.history.navigate("#imageUpload/" + image.id, {trigger: true});
          }
        });
      }
    }.bind(this));
  }
});
