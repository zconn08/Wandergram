json.extract! notification, :id, :user_id, :post_id, :body
json.user notification.user, :username
json.user_prof_pic notification.user.image, :url
json.post_image notification.post.image, :url
