Wandergram.Views.UserEdit = Backbone.View.extend({
  template: JST["user_edit"],

  className: "editContainer",

  events: {
    "click .change_profile_picture" : "uploadNewProfilePicture",
    "submit form" : "submitNewInfo"
  },

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  },

  setTransformation: function(url, transform){
    var newUrl = url.substr(0, url.indexOf("/image/upload/")) +
                 "/image/upload/" +
                 transform + "/" +
                 url.substr(url.indexOf("/image/upload/") + 14, url.length);
    return newUrl;
  },


  uploadNewProfilePicture: function(e){
    e.preventDefault();
    var image = new Wandergram.Models.Image();
    cloudinary.openUploadWidget(CLOUDINARY_OPTIONS, function(error, result){
      var data = result[0];
      var newUrl = this.setTransformation(data.url, "w_640,h_640" );
      var newThumb = this.setTransformation(data.thumbnail_url, "w_152,h_152");
      image.set({url: newUrl, thumbnail_url: newThumb});
      var user = this.model
      if (error === null) {
        image.save({}, {
          success: function(){
            $(".edit-profile-picture").attr("src", newUrl);
            $(".image_id_input").val(image.id);
            Wandergram.Collections.images.add(image);
          }
        });
      }
    }.bind(this));
  },

  submitNewInfo: function(e){
    e.preventDefault();
    var formData = this.$("form").serializeJSON();
    this.model.save(formData, {
      success: function() {
        Backbone.history.navigate("#users/" + this.model.id, {trigger: true});
      }.bind(this)
    });
  }

});
