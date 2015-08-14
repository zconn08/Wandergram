json.extract! user, :id, :username, :profile_picture_url, :bio
json.num_posts user.posts.length
json.posts do
  json.array! user.posts do |post|
    json.partial! 'api/posts/post', post: post
  end
end

following = user.follower_ids.index(current_user.id)
if following
  json.isFollowed user.follower_ids[following]
end
