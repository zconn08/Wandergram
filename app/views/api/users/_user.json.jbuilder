json.extract! user, :id, :username, :profile_picture_url, :bio
json.num_posts user.posts.length

following = Following.follow_for_users(current_user, user)
if following
  json.following following
end

json.posts do
  json.array! user.posts do |post|
    json.partial! 'api/posts/post', post: post
  end
end
