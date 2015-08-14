Wandergram.Views.GridPhoto = Backbone.View.extend({
  template: JST["grid_photo"],

  events: {
    "mouseover img": "showDetail",
    "mouseleave img": "removeDetail",
  },

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);
  },

  render: function(){
    this.$el.html(this.template({post: this.model}));
    return this;
  },

  showDetail: function(e){
    // debugger;
  },

  removeDetail: function(e){

  },
});
