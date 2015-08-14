Wandergram.Collections.Posts = Backbone.Collection.extend({
  url: "api/posts",
  model: Wandergram.Models.Post,

  getOrFetch: function(id){
    var model = this.get(id);
    if(!model){
      model = new Wandergram.Models.Post({id: id});
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
