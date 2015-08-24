Wandergram.Views.PostIndex = Backbone.CompositeView.extend({
  template: JST["post_index"],

  className: "post-index-container",

  events: {
    "click .like-button": "like",
    "mouseenter .post-image": "panToPost",
    "mouseleave .post-image": "removePostDetail",
    "click .disable-panning": "togglePanning",
    "click .start-tour" : "startTour"
  },

  initialize: function(){
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

  startTour: function(){
    var tour;

    tour = new Shepherd.Tour({
      defaults: {
        classes: 'shepherd-theme-arrows',
        scrollTo: true
      }
    });

    tour.addStep('intro-step', {
      text: 'Welcome to Wandergram!<br>Explore posts around the world on the map to your left...',
      attachTo: '#map-container right',
      buttons: [
        {
          text: 'Next',
          action: tour.next
        }, {
          text: 'Done',
          action: tour.cancel
        }
      ]
    });

    tour.addStep('photo-step', {
      text: '...or the feed to your right',
      attachTo: '.first-picture left',
      buttons: [
        {
          text: 'Back',
          action: tour.back
        }, {
          text: 'Next',
          action: tour.next
        }, {
          text: 'Done',
          action: tour.cancel
        }
      ]
    });

    tour.addStep('upload-step', {
      text: 'Use the camera button at the top of the page to upload a photo',
      attachTo: '.glyphicon-camera bottom',
      buttons: [
        {
          text: 'Back',
          action: tour.back
        }, {
          text: 'Next',
          action: tour.next
        }, {
          text: 'Done',
          action: tour.cancel
        }
      ]
    });

    tour.addStep('profile-step', {
      text: 'Check out your notifications and profile here.<br>Have fun wandering!',
      attachTo: '.navbar-right bottom',
      buttons: [
        {
          text: 'Done',
          action: tour.cancel
        }
      ]
    });

    tour.start();
  },

 addPostIndexItemView: function(postIndexItem){
   var collectionLength = this.collection.length;
   var subview = new Wandergram.Views.PostIndexItem({
     model: postIndexItem, className: "inTheIndex",
     collectionLength: collectionLength
   });
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
 },

 togglePanning: function(){
   if (this.mapView._DisabledPanning) {
    this.mapView._DisabledPanning = false;
    this.$el.find(".disable-panning").text("Panning Enabled");
    this.$el.find(".disable-panning").css("background-color","#125688");
   } else {
    this.mapView._DisabledPanning = true;
    this.$el.find(".disable-panning").text("Panning Disabled");
    this.$el.find(".disable-panning").css("background-color","#0d3c5f");
   }
 }

});
