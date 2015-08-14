Wandergram.Views.PostIndexItem = Backbone.CompositeView.extend({
  template: JST["post_index_item"],

  events: {
    "submit .new-comment-form": "createComment",
    "click .like-button": "toggleLike"
  },

  initialize: function(){
    this.listenTo(this.model, "sync", this.render);

    var comments = this.model.comments();

    comments.each(function(comment){
      this.addCommentView(comment);
    }.bind(this));

    this.listenTo(comments, "add", this.addCommentView);
    this.listenTo(this.model.like(), "change", this.render);
    this.listenTo(comments, "remove", this.removeCommentView);
  },

  render: function(){
    var likeString = this.composeLikeString();
    this.$el.html(this.template({
      post: this.model,
      likeString: likeString
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
    if(likes){
      var numLikes = likes.length;
    } else {
      var numLikes = 0;
    }

    _(likes).each(function(like, idx){
      var html_string = "<a href='#/users/" + like.id + "'>" + like.username + "</a>";

      if (idx < (numLikes - 2)) {
        html_string += ", "
      } else if (idx === (numLikes - 2)) {
        html_string += " and "
      }

      arrayOfUsers.push(html_string);
    });

    return arrayOfUsers.join("");
  },

  createComment: function(e){
    e.preventDefault();
    var $input = this.$('.comment-text');
    var comment = $input.val();
    if (comment != "") {
      var newComment = new Wandergram.Models.Comment();
      newComment.save({ body: comment, post_id: this.model.id }, {
        success: function(model){
          this.model.comments().add(newComment);
          Backbone.history.navigate("", {trigger: true});
        }.bind(this)
      });

    }
    $input.val("");
  },

  toggleLike: function(e){
    if (!this.model.isLiked()) {
      this.model.like().save({post_id: this.model.id}, {
        success: function(model){
          this.model.set({numLikes: this.model.get('numLikes') + 1});
        }.bind(this)
      });
    } else {
      this.model.like().destroy();
      this.model.set({numLikes: this.model.get('numLikes') - 1});
      this.model.like().clear();
    }
  }

});
