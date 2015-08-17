Wandergram.Views.Nav = Backbone.View.extend({
  template: JST['nav'],

  events: {
    "click .upload": "upload",
    "click .logout-link": "logOut",
    // "click .dropdown": "markNotificationsAsRead"
  },

  initialize: function(options){
    this.router = options.router;
    this.collection.fetch();
    this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.router, "route", this.handleRoute);
    this.listenTo(this.collection, "add remove", this.updateNotificationsCount);
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
    this.$el.html(this.template({
      notifications: this.collection
    }));
    return this;
  },

  updateNotificationsCount: function () {
    this.$("#notifications-count").text(this.collection.length);
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
  },

  markNotificationsAsRead: function(){
    this.collection.each(function(notification){
      notification.save({read: true});
    });
  }
});
