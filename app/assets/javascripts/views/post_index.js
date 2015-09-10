Wandergram.Views.PostIndex = Backbone.CompositeView.extend({
  template: JST["post_index"],

  className: "post-index-container",

  events: {
    "click .like-button": "like",
    "mouseenter .post-image": "panToPost",
    "mouseleave .post-image": "removePostDetail",
    "click .disable-panning": "togglePanning",
    "click .start-tour" : "startTour",
  },

  initialize: function(options){
    this.listenTo(this.collection, "add", this.addPostIndexItemView);
    this.listenTo(this.collection, "remove", this.removePostIndexItemView);
    this.collection.each(this.addPostIndexItemView.bind(this));
    this.mapView = new Wandergram.Views.MapShow({collection: this.collection});
    this.timesVisitedIndex = options.timesVisitedIndex;
  },

  render: function(){
    this.$el.html(this.template({posts: this.collection}));
    this.attachSubviews();
    this.addSubview("#map-container", this.mapView);
    this.mapView.initMap();
    this.tour = undefined;
    if (this.timesVisitedIndex === 0 && CURRENT_USER_NAME === "OceanBlue1492") {
      setTimeout(this.startTour, 500);
    }
    return this;
  },

  startTour: function(){
    window.scrollTo(0,0);
    $("#main-content").addClass("main-in-tour");
    $("body").addClass("body-in-tour");
    $(".disable-panning").click();

    this.tour = new Shepherd.Tour({
      defaults: {
        classes: 'shepherd-theme-arrows',
        scrollTo: true
      }
    });


    this.tour.addStep('intro-step', {
      text: 'Welcome to Wandergram!<br>Explore posts around the world on the map to your left...',
      attachTo: '#map-container right',
      buttons: [
        {
          text: 'Next',
          action: this.tour.next
        }, {
          text: 'Done',
          action: this.tour.cancel,
        }
      ]
    });

    this.tour.addStep('photo-step', {
      text: '...or the feed to your right',
      attachTo: '.first-picture left',
      buttons: [
        {
          text: 'Back',
          action: this.tour.back
        }, {
          text: 'Next',
          action: this.tour.next
        }, {
          text: 'Done',
          action: this.tour.cancel,
        }
      ]
    });

    this.tour.addStep('upload-step', {
      text: 'Use the camera button at the top of the page to upload a photo',
      attachTo: '.glyphicon-camera bottom',
      buttons: [
        {
          text: 'Back',
          action: this.tour.back
        }, {
          text: 'Next',
          action: this.tour.next
        }, {
          text: 'Done',
          action: this.tour.cancel
        }
      ]
    });

    this.tour.addStep('profile-step', {
      text: 'Check out your notifications and profile here.<br>Have fun wandering!',
      attachTo: '.glyphicon-bullhorn bottom',
      buttons: [
        {
          text: 'Done',
          action: this.tour.cancel
        }
      ]
    });

    this.tour.start();
  },

  endTour: function(){
    this.tour && this.tour.cancel
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
