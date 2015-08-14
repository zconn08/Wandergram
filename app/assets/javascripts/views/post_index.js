Wandergram.Views.PostIndex = Backbone.CompositeView.extend({
  template: JST["post_index"],

  events: {
    "click .like-button": "like"
  },

  initialize: function(){
    // this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addPostIndexItemView);
    this.listenTo(this.collection, "remove", this.removePostIndexItemView);
    this.collection.each(this.addPostIndexItemView.bind(this));

  },

  render: function(){
    this.$el.html(this.template({posts: this.collection}));
    this.attachSubviews();
    this.mapView = new Wandergram.Views.MapShow();
    this.addSubview("#map-container", this.mapView);
    this.mapView.initMap();
    return this;
  },

 addPostIndexItemView: function(postIndexItem){
   var subview = new Wandergram.Views.PostIndexItem(
     {model: postIndexItem}
   );
   this.addSubview('.posts-container', subview, true);
 },

 removePostIndexItemView: function(postIndexItem){
   this.removeModelSubview('.posts-container', postIndexItem);
 },

 like: function(e){
   var postId = $(e.currentTarget).data("post-id");
 },
});
