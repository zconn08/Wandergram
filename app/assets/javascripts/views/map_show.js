Wandergram.Views.MapShow = Backbone.View.extend({
  attributes: {
    id: "map-canvas"
  },

  initialize: function () {
    this._markers = {};

    this.listenTo(this.collection, 'add', this.addMarker);
    this.listenTo(this.collection, 'remove', this.removeMarker);
    this._info_window = null;
    this._DisabledPanning = false;
  },

  initMap: function () {
    var mapOptions = {
      center: { lat: 37.7833, lng: -122.4167 },
      zoom: 12
    };

    this._map = new google.maps.Map(this.el, mapOptions);
    this.addAllMarkers();
  },
  addAllMarkers: function () {
    this.collection.each(this.addMarker.bind(this));
  },

  addMarker: function(post) {
    if (post.get('lat') !== null) {
      if (this._markers[post.id]) { return };
        var caption = (post.get('caption') !== null) ? post.get('caption') : ""

        var marker = new google.maps.Marker({
          position: { lat: post.get('lat'), lng: post.get('lng') },
          map: this._map,
          caption: caption,
          img_url: post.get("image").url,
          postId: post.get("id"),
          username: post.user().get("username")
        });

        google.maps.event.addListener(marker, 'click', function (e) {
          this.showMarkerInfo(e, marker);
        }.bind(this));

        this._markers[post.id] = marker;
    }
  },

  panToPost: function(marker){
    this.removePostDetail();
    if (!this._DisabledPanning) {
      if(marker !== undefined){
        if (marker.position.G > 37 && marker.position.G < 38 && marker.position.K < -122 && marker.position.K > -123) {
          this._map.setZoom(12);
        } else {
          this._map.setZoom(9);
        }
        var contentString = "";
        if (marker.caption !== "") {
          var shortened_caption = marker.caption.length < 30 ? marker.caption : (marker.caption.substr(0,27) + "...");


          var contentString = '<div class="info-window-container-sm" id="info-window">' +
                              '<b>' + marker.username + '</b><br>' +
                              '<img src="' + marker.img_url + '">' +
                              '<br>'+ shortened_caption +
                              "</div>";
        } else {
          var contentString = '<div class="info-window-container-lg" id="info-window">' +
                              '<b>' + marker.username + '</b><br>' +
                              '<img src="' + marker.img_url + '">' +
                              "</div>";
        }
          this._map.panTo(marker.getPosition());
          this._infoWindow = new google.maps.InfoWindow({
            content: contentString,
          });
          this._infoWindow.open(this._map, marker);

      } else {
        this._map.setZoom(3);
      }
    }
  },

  removePostDetail: function(){
    if(this._infoWindow !== null && this._infoWindow !== undefined ){
      this._infoWindow.close();
    }
    this._infoWindow = null;
  },

  showMarkerInfo: function(e, marker){
    this.panToPost(marker);
    if ($("#" + marker.postId).length > 0) {
      $('html, body').animate({scrollTop:$('#' + marker.postId ).position().top}, 'slow');
    }
  },

});
