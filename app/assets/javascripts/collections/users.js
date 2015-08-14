Wandergram.Collections.Users = Backbone.Collection.extend({
  url: "api/users",
  model: Wandergram.Models.User,

  getOrFetch: function(id){
    var model = this.get(id);
    if(!model){
      model = new Wandergram.Models.User({id: id});
      this.add(model);
      model.fetch({
        error: function(){
          this.remove(model);
        }.bind(this)
      });
    } else {
      model.fetch();
    }
    return model;
  }
});
