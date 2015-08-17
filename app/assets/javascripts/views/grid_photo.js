Wandergram.Views.GridPhoto = Backbone.View.extend({
  template: JST["grid_photo"],

  events: {
    "click .grid-photo": "showModal",
    "mouseenter .grid-photo": "panToPost",
    "mouseleave .grid-photo": "removePostDetail",
  },

  initialize: function(options){
    this.listenTo(this.model, "sync", this.render);
    this.mapView = options.map;
  },

  render: function(){
    this.$el.html(this.template({post: this.model}));
    return this;
  },

  showModal: function(e) {
      e.preventDefault();
      this.removePostDetail();
      var listingId = $(e.currentTarget).data('post-id');
      var marker = this.mapView._markers[listingId];
      marker.setAnimation(google.maps.Animation.BOUNCE);

      var modal = new Wandergram.Views.Modal({model: this.model, marker: marker});
      $(".post-index").append(modal.$el);
      modal.render();
  },

  panToPost: function (e) {
    var listingId = $(e.currentTarget).data('post-id');
    var marker = this.mapView._markers[listingId];
    this.mapView.panToPost(marker);
  },

  removePostDetail: function(e){
    this.mapView.removePostDetail();
  },
});
