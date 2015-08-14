time_ago = time_ago_in_words(post.created_at)
num_likes = post.post_likers.length
num_comments = post.comments.length

json.extract! post, :id, :user_id, :caption, :location
json.user post.user, :id, :username, :image
json.time_ago time_ago
json.num_likes num_likes
json.num_comments num_comments
json.likes do
  json.array! post.post_likers do |liker|
    json.extract! liker, :id, :username
  end
end

json.image post.image

json.comments do
  json.array! post.comments do |comment|
    json.partial! 'api/comments/comment', comment: comment
  end
end

like = post.likes.find_by(user_id: current_user)

if like
  json.isLiked do
    json.extract! like, :id
  end
end
