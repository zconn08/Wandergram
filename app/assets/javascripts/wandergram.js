window.Wandergram = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    var router = new Wandergram.Routers.Router({
      $rootEl: $("#main-content")
    });

    var view = new Wandergram.Views.Nav({
      router: router
    });

    $("#main-nav").html(view.render().$el);
    Backbone.history.start();
  }
};
