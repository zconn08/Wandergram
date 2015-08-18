json.extract! notification, :id, :user_id, :post_id, :body, :read
json.user notification.creator, :username
json.user_prof_pic notification.creator.image, :url

if notification.post
  json.post_image notification.post.image, :url
else
  json.post_image url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439875601/oviucf9uk9mo4xy6khmx.png"
end
