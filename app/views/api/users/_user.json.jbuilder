json.extract! user, :id, :username, :bio
json.num_posts user.posts.length
json.image user.image
json.numFollowers user.followers.length
json.numFollowees user.followees.length

following = Following.follow_for_users(current_user, user)
if following
  json.following following
end

json.posts do
  json.array! user.posts do |post|
    json.partial! 'api/posts/post', post: post
  end
end
