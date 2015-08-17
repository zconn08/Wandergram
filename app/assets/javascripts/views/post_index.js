Wandergram.Views.PostIndex = Backbone.CompositeView.extend({
  template: JST["post_index"],

  className: "post-index-container",

  events: {
    "click .like-button": "like",
    "mouseenter .post-image": "panToPost",
    "mouseleave .post-image": "removePostDetail",
  },

  initialize: function(){
    // this.listenTo(this.collection, "sync", this.render);
    this.listenTo(this.collection, "add", this.addPostIndexItemView);
    this.listenTo(this.collection, "remove", this.removePostIndexItemView);
    this.collection.each(this.addPostIndexItemView.bind(this));
    this.mapView = new Wandergram.Views.MapShow({collection: this.collection});
  },

  render: function(){
    this.$el.html(this.template({posts: this.collection}));
    this.attachSubviews();
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

 panToPost: function (e) {
   var listingId = $(e.currentTarget).data('post-id');
   var marker = this.mapView._markers[listingId];
   this.mapView.panToPost(marker);
 },

 removePostDetail: function(e){
   this.mapView.removePostDetail();
 }

});
