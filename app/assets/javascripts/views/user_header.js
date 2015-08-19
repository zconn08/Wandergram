Wandergram.Views.UserHeader = Backbone.View.extend({
  template: JST['user_header'],
  className: "user-header-container",

  events: {
    "click .following-btn": "toggleFollow",
  },

  initialize: function(){
    this.listenTo(this.model, "change", this.render);
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
          var notification = new Wandergram.Models.Notification({
            body: CURRENT_USER_NAME + " is following you",
            user_id: this.model.id
          });
          notification.save({},{
            success: function(){
            },
            error: function(){
            }
          });
        }.bind(this)
      });
    } else {
      this.model.follow().destroy();
      this.model.follow().clear();
    }
  }
});
