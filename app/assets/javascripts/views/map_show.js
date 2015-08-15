Wandergram.Views.MapShow = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function () {
    this._markers = {};

    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
    this.collection.each(this.addMarker.bind(this));
  },

  initMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167 },
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
  },

  addMarker: function(post) {
    if (post.get('lat') !== null) {
      if (this._markers[post.id]) { return };
        var caption = (post.get('caption') !== null) ? post.get('caption') : ""

        var marker = new google.maps.Marker({
          position: { lat: post.get('lat'), lng: post.get('lng') },
          map: this._map,
          caption: caption,
          img_url: post.get("image").url
        });

        // google.maps.event.addListener(marker, 'click', function (e) {
        //   this.showMarkerInfo(e, marker);
        // }.bind(this));

        this._markers[post.id] = marker;
    }
  },
});
