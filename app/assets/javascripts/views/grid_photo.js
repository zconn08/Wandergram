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
      var modal = new Wandergram.Views.Modal({model: this.model});
      $(".post-index").append(modal.$el);
      modal.render();
  },

  panToPost: function (e) {
    var listingId = $(e.currentTarget).data('post-id');

    var marker = this.mapView._markers[listingId];
    if(marker !== undefined){
      var contentString = '<div class="info-window-container">' +
                          '<img src="' + marker.img_url + '">' +
                          '<br>'+ marker.caption +
                          "</div>";
      this.mapView._map.panTo(marker.getPosition());
      this._infoWindow = new google.maps.InfoWindow({
        content: contentString
      });

      this._infoWindow.open(this.mapView._map, marker);
    }
  },

  removePostDetail: function(e){
    if(this._infoWindow !== null && this._infoWindow !== undefined ){
      this._infoWindow.close();
    }
    this._infoWindow = null;
  },
});
