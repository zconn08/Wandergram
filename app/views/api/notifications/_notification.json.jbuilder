json.extract! notification, :id, :user_id, :post_id, :body
json.user notification.creator, :username
json.user_prof_pic notification.creator.image, :url
json.post_image notification.post.image, :url
