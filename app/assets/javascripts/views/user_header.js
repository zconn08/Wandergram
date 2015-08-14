Wandergram.Views.UserHeader = Backbone.View.extend({
  template: JST['user_header'],

  events: {
    "click .following-btn": "toggleFollow",
    "click #edit-btn": "editProfile",
  },

  initialize: function(){
    this.listenTo(this.model.follow(), "change", this.render);
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  },

  editProfile: function(){
    Backbone.history.navigate("users/" + this.model.get("id") + "/edit", {trigger: true} );
  },

  toggleFollow: function(){
    if (!this.model.isFollowed()) {
      this.model.follow().save({followee_id: this.model.id});
    } else {
      this.model.follow().destroy();
      this.model.follow().clear();
    }
  }
});
