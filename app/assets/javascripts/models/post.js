Wandergram.Models.Post = Backbone.Model.extend({
  urlRoot: "api/posts",

  parse: function(payload){
    if (payload.comments){
      this.comments().set(payload.comments, { parse: true });
      delete payload.comments;
    }
    if (payload.isLiked){
      this.like().set(payload.isLiked);
      delete payload.isLiked;
    }
    if (payload.user){
      this.user().set(payload.user);
      delete payload.user;
    }
    return payload;
  },

  comments: function(){
    if(!this._comments){
      this._comments = new Wandergram.Collections.Comments([], { post: this});
    }
    return this._comments;
  },


  like: function(){
    if(!this._like){
      this._like = new Wandergram.Models.Like();
    }
    return this._like;
  },

  isLiked: function(){
    return !this.like().isNew();
  },

  user: function(){
    if(!this._user){
      this._user = new Wandergram.Models.User();
    }
    return this._user;
  },

});
