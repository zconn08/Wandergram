Wandergram.Views.UserHeader = Backbone.View.extend({
  template: JST['user_header'],

  events: {
    "click .following-btn": "toggleFollow",
  },

  initialize: function(){
    this.listenTo(this.model.follow(), "change", this.render);
  },

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  },

  toggleFollow: function(){
    if (!this.model.isFollowed()) {
      this.model.follow().save({followee_id: this.model.id}, {
        success: function(){

        }
      });
    } else {
      this.model.follow().destroy();
      this.model.follow().clear();
    }
  }
});
