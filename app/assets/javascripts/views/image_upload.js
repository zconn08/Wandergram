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
    return this;
  },

  initialize: function(){
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
    formData.image_url = this.$(".active-image img").attr("src");

    var newPost = new Wandergram.Models.Post();
    newPost.save(formData, {
      success: function(model){
        this.collection.add(newPost)
      }.bind(this),
      error: function(){
      }
    });
    Backbone.history.navigate("", {trigger: true});

    //Make sure homepage rerenders
    //gives the message image url can't be blank - what is that?
  }

});
