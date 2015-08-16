# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "zconn", password: "password", image_id: 8, bio: "Working on an instagram clone")
User.create(username: "barryO", password: "password", image_id: 9, bio: "just running the free world")
User.create(username: "Elon", password: "password", image_id: 10, bio: "Elon Reeve Musk (/ˈiːlɒn ˈmʌsk/; born June 28, 1971) is a South African-born, Canadian-American business magnate,[7][8] engineer,[9] inventor[10] and investor.[11][12][13] He is the CEO and CTO of SpaceX, CEO and product architect of Tesla Motors, and chairman of SolarCity.")

Post.create(user_id: 1, image_id: 2, caption: "Beach Life", location: "Cabo San Lucas, Mexico", lat: 22.883754, lng: -109.905928)
Post.create(user_id: 1, image_id: 3, caption: "Cacti at Sunset", location: "Albuquerque, New Mexico", lat: 35.085334, lng: -106.605553)
Post.create(user_id: 1, image_id: 4, caption: "River Living", location: "Amazon River, Brazil", lat: -2.165109, lng: -55.115513)
Post.create(user_id: 1, image_id: 5)

Post.create(user_id: 2, image_id: 6, location: "Koh Samui, Thailand", lat: 37.787912, lng: -122.401943)
Post.create(user_id: 2, image_id: 7, location: "Crissy Fields, San Francisco", lat: 37.803682, lng: -122.468513)

Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 1)

Like.create(user_id: 3, post_id: 5)

Like.create(user_id: 3, post_id: 6)
Like.create(user_id: 2, post_id: 6)
Like.create(user_id: 1, post_id: 6)


Following.create(follower_id: 1, followee_id: 2)
Following.create(follower_id: 3, followee_id: 1)

#Default prof pic
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png")
#Posts
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515263/gxrjv8aqyfenx5afs7bl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515263/gxrjv8aqyfenx5afs7bl.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515575/ino9pihxezbhu4bpna0c.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515575/ino9pihxezbhu4bpna0c.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515599/vxzhyfqlkkwsooxad61o.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515599/vxzhyfqlkkwsooxad61o.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg")
#Prof Pics
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg")
