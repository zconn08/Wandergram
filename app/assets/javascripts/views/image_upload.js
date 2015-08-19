Wandergram.Views.ImageUpload = Backbone.View.extend({
  template: JST["image_upload"],

  events: {
    "click .gutter-image": "promoteImage",
    "click .btn-success": "shareImage",
    "click .btn-danger": "cancelImage"
  },

  render: function(){
    var transformedUrls = this.generateFilterUrls(this.model.get("url"));
    this.$el.html(this.template({
      image: this.model,
      transformedUrls: transformedUrls,
    }));
    $(".location-entry").geocomplete();
    return this;
  },

  initialize: function(){
    $(document).on('keyup', this.checkForEnter.bind(this));
  },

  checkForEnter: function (e){
    if ((e.keyCode === 13) && ($('.upload-form :focus').length === 0)) {
      this.shareImage(e);
    }
  },

  generateFilterUrls: function(url){
    var arrayOfUrls = [];
    var transformations = ["", "e_oil_paint,", "e_sepia,", "e_vignette,", "e_grayscale,", "e_negate,"]
    transformations.forEach(function(transformation){
      var newUrl = url.substr(0, url.indexOf("/image/upload/")) +
                   "/image/upload/" +
                   transformation +
                   url.substr(url.indexOf("/image/upload/") + 14, url.length);
      arrayOfUrls.push(newUrl);
    });
    return arrayOfUrls;
  },

  promoteImage: function(e){
    this.$(".active-image").html($(e.currentTarget).find("img").clone());
  },

  cancelImage: function(e){
    Backbone.history.navigate("", {trigger: true});
  },

  shareImage: function(e){
    e.preventDefault();
    var formData = this.$("form").serializeJSON();
    var url = this.$(".active-image img").attr("src");

    //Save Image
    var image = new Wandergram.Models.Image();
    image.save({url: url, thumbnail_url: url}, {
      success: function(model){
        Wandergram.Collections.images.add(image);
        formData.image_id = image.id;

        //Save Post
        var newPost = new Wandergram.Models.Post();
        newPost.save(formData, {
          success: function(model){
            this.collection.add(newPost)
            Backbone.history.navigate("", {trigger: true});
          }.bind(this),
          error: function(){
            $(".location-error").html(" Please enter a valid location")
          }.bind(this)
        });
      }.bind(this)
    });
  }

});
