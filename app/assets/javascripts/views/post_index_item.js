Wandergram.Views.PostIndexItem = Backbone.CompositeView.extend({
  template: JST["post_index_item"],

  events: {
    "submit .new-comment-form": "createComment",
    "click .like-button": "toggleLike"
  },

  initialize: function(options){
    this.collectionLength = options.collectionLength;
    this.listenTo(this.model, "sync", this.render);
    var comments = this.model.comments();

    comments.each(function(comment){
      this.addCommentView(comment);
    }.bind(this));

    this.listenTo(comments, "add", this.addCommentView);
    this.listenTo(this.model.like(), "change", this.render);
    this.listenTo(comments, "remove", this.removeCommentView);
    this.listenTo(this.model, "change:num_comments", this.render);
    this.listenTo(this.model, "change:num_likes", this.render);
  },

  render: function(){
    var likeString = this.composeLikeString();
    this.$el.html(this.template({
      post: this.model,
      likeString: likeString,
      collectionLength: this.collectionLength
    }));
    this.attachSubviews();
    return this;
  },

  addCommentView: function(comment){
    var subview = new Wandergram.Views.Comment(
      {model: comment}
    );
    this.addSubview('.comments-container', subview);
  },

  removeCommentView: function(comment){
    this.removeModelSubview('.comments-container', comment);
  },

  composeLikeString: function(){
    var arrayOfUsers = [];
    var likes = this.model.get("likes");

    var numLikes = likes ? likes.length : 0;

    _(likes).each(function(like, idx){
      var htmlString = "<a href='#/users/" + like.id + "'>" + like.username + "</a>";

      if (idx < (numLikes - 2)) {
        htmlString += ", ";
      } else if (idx === (numLikes - 2)) {
        htmlString += " and ";
      }

      arrayOfUsers.push(htmlString);
    });

    return arrayOfUsers.join("");
  },

  createComment: function(e){
    e.preventDefault();
    var $input = this.$('.comment-text');
    var comment = $input.val();
    if (comment !== "") {
      var newComment = new Wandergram.Models.Comment();
      newComment.save({ body: comment, post_id: this.model.id }, {
        success: function(model){
          this.model.comments().add(newComment);
          this.model.set({
            num_comments: this.model.get('num_comments') + 1
          });
          this.createNotification("commented on your photo");
        }.bind(this)
      });

    }
    $input.val("");
  },

  toggleLike: function(e){
    if (!this.model.isLiked()) {
      this.model.like().save({post_id: this.model.id}, {
        success: function(model){
          var newLikes = this.model.get('likes').concat({id: CURRENT_USER_ID, username: CURRENT_USER_NAME});
          this.model.set({
            num_likes: this.model.get('num_likes') + 1,
            likes: newLikes
          });
          this.createNotification("likes your photo");
        }.bind(this)
      });
    } else {
      this.model.like().destroy();
      var oldLikes = this.model.get('likes');
      var posOfMe = _.findIndex(oldLikes, function (el) {
        return JSON.stringify(el) === JSON.stringify({
          id: "" + CURRENT_USER_ID,
          username: CURRENT_USER_NAME
        });
      });
      oldLikes.splice(posOfMe, 1);
      this.model.set({
        num_likes: this.model.get('num_likes') - 1,
        likes: oldLikes
      });
      this.model.like().clear();
    }
  },

  createNotification: function(string) {
    if (this.model.user().id !== CURRENT_USER_ID) {
      var notification = new Wandergram.Models.Notification({
        post_id: this.model.id,
        body: CURRENT_USER_NAME + " " + string,
        user_id: this.model.user().id
      });
      notification.save({},{
        success: function(){
        },
        error: function(){
        }
      });
    }
  }

});
