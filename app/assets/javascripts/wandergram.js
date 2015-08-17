window.Wandergram = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var notifications = new Wandergram.Collections.Notifications();

    var router = new Wandergram.Routers.Router({
      $rootEl: $("#main-content")
    });

    var view = new Wandergram.Views.Nav({
      collection: notifications,
      router: router
    });

    $("#main-nav").html(view.render().$el);
    Backbone.history.start();
  }
};
