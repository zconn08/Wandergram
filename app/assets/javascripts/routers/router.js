Wandergram.Routers.Router = Backbone.Router.extend({
  routes: {
    "": "index",
    "users/home": "userHome",
    "users/:id": "userShow",
    "imageUpload/:id": "imageUpload",
    "mapShow": "MapShow",
    "users/:id/edit": "userEdit"
  },

  initialize: function(options){
    this.$rootEl = options.$rootEl;
    this.postsCollection = new Wandergram.Collections.Posts();
    this.usersCollection = new Wandergram.Collections.Users();
    this.timesVisitedIndex = 0;
  },

  index: function(){
    this.postsCollection.fetch();
    var view = new Wandergram.Views.PostIndex({
      collection: this.postsCollection,
      timesVisitedIndex: this.timesVisitedIndex
    });
    this.timesVisitedIndex += 1;
    this.swapView(view);
  },

  userHome: function(){
    var model = new Wandergram.Models.User();
    model.fetch({url: "/api/users/current_show"});
    var view = new Wandergram.Views.UserShow({model: model});
    this.swapView(view);
  },

  userShow: function(id){
    var model = this.usersCollection.getOrFetch(id);
    model.fetch();
    var view = new Wandergram.Views.UserShow({model: model});
    this.swapView(view);
  },

  userEdit: function(id){
    if (parseInt(id) !== CURRENT_USER_ID) {
      Backbone.history.navigate("", {trigger: true});
    } else {
      var model = this.usersCollection.getOrFetch(id);
      var view = new Wandergram.Views.UserEdit({model: model});
      this.swapView(view);
    }
  },

  imageUpload: function(id){
    var image = Wandergram.Collections.images.getOrFetch(id);
    var view = new Wandergram.Views.ImageUpload({
      model: image,
      collection: this.postsCollection
    });
    this.swapView(view);
  },

  swapView: function(view){
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.$el);
    view.render();
  },
});
