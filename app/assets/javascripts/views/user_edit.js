Wandergram.Views.UserEdit = Backbone.View.extend({
  template: JST['user_edit'],

  render: function(){
    this.$el.html(this.template({user: this.model}));
    return this;
  },
});
