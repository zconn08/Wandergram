Wandergram.Collections.Images = Backbone.Collection.extend({
  url: "api/images",
  model: Wandergram.Models.Image,
  getOrFetch: function(id){
    var model = this.get(id);
    if(!model){
      model = new Wandergram.Models.Image({id: id});
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

Wandergram.Collections.images = new Wandergram.Collections.Images();
