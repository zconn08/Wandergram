Wandergram.Models.User = Backbone.Model.extend({
  urlRoot: "api/users",

  parse: function(payload){
    if (payload.posts){
      this.posts().set(payload.posts, { parse: true });
      delete payload.posts;
    }
    if (payload.following){
      this.follow().set(payload.following);
      delete payload.following;
    }
    return payload;
  },

  posts: function(){
    if(!this._posts){
      this._posts = new Wandergram.Collections.Posts([], { post: this});
    }
    return this._posts;
  },

  follow: function(){
    if(!this._follow){
      this._follow = new Wandergram.Models.Following();
    }
    return this._follow;
  },

  isFollowed: function(){
    return !this.follow().isNew();
  },
});
