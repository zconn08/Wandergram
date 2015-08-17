Wandergram.Views.UserEdit = Backbone.View.extend({
  template: JST["user_edit"],

  events: {
    "click .change_profile_picture" : "uploadNewProfilePicture"
  },

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  },

  uploadNewProfilePicture: function(e){
    debugger;
    e.preventDefault();
  }

});
