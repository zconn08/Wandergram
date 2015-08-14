Wandergram.Views.Comment = Backbone.View.extend({
  template: JST["comment"],

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({comment: this.model}));
    return this;
  },
});
