Wandergram.Collections.Notifications = Backbone.Collection.extend({
  url: "api/notifications",
  model: Wandergram.Models.Notification,
  numberNotRead: function () {
        filtered = this.filter(function (notification) {
            return notification.get("read") === false;
        });
        return filtered.length;
    }
});
