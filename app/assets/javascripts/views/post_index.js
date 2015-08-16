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

    this._info_window = null;
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
   if(marker !== undefined){
     this.mapView._map.setZoom(13);
     var contentString = "";
     if (marker.caption !== "") {
       var contentString = '<div class="info-window-container-sm">' +
                           '<img src="' + marker.img_url + '">' +
                           '<br>'+ marker.caption +
                           "</div>";
     } else {
       var contentString = '<div class="info-window-container-lg">' +
                           '<img src="' + marker.img_url + '">' +
                           "</div>";
     }
     this.mapView._map.panTo(marker.getPosition());
     this._infoWindow = new google.maps.InfoWindow({
       content: contentString
     });

     this._infoWindow.open(this.mapView._map, marker);
   } else {
     this.mapView._map.setZoom(3);
   }
 },

 removePostDetail: function(e){
   if(this._infoWindow !== null && this._infoWindow !== undefined ){
     this._infoWindow.close();
   }
   this._infoWindow = null;
 }

});
