Wandergram.Views.PostIndex = Backbone.CompositeView.extend({
  template: JST["post_index"],

  className: "post-index-container",

  events: {
    "click .like-button": "like",
    "mouseenter .post-image": "panToPost",
    "mouseleave .post-image": "removePostDetail",
    "click .disable-panning": "togglePanning"
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
    this.startTour();
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

    tour.addStep('map-step', {
      text: 'Clicking on a marker will give more info and scroll to the post in the feed',
      attachTo: '#map-container right',
      buttons: [
        {
          text: 'Next',
          action: tour.next
        }
      ]
    });

    tour.addStep('photo-step', {
      text: 'Hovering over a photo will pan to its location on the map',
      attachTo: '.first-picture left',
      buttons: [
        {
          text: 'Back',
          action: tour.back
        }, {
          text: 'Next',
          action: tour.next
        }
      ]
    });

    tour.addStep('comments-like-step', {
      text: 'Click on the heart to like or unlike photos. Write comments in the comment box and press enter to submit',
      attachTo: '.first-like left',
      buttons: [
        {
          text: 'Back',
          action: tour.back
        }, {
          text: 'Next',
          action: tour.next
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
   } else {
    this.mapView._DisabledPanning = true;
    this.$el.find(".disable-panning").text("Panning Disabled");
   }
 }

});
