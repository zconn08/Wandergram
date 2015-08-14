# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "zconn", password: "password", profile_picture_url: "zconn-prof-pic.jpg", bio: "Working on an instagram clone")
User.create(username: "barryO", password: "password", profile_picture_url: "obama.jpg", bio: "just running the free world")
User.create(username: "Elon", password: "password", profile_picture_url: "musk.jpg", bio: "Elon Reeve Musk (/ˈiːlɒn ˈmʌsk/; born June 28, 1971) is a South African-born, Canadian-American business magnate,[7][8] engineer,[9] inventor[10] and investor.[11][12][13] He is the CEO and CTO of SpaceX, CEO and product architect of Tesla Motors, and chairman of SolarCity.")

Post.create(user_id: 1, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515263/gxrjv8aqyfenx5afs7bl.jpg", caption: "post one", location: "Cabo San Lucas, Mexico")
Post.create(user_id: 1, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515575/ino9pihxezbhu4bpna0c.jpg", caption: "post two")
Post.create(user_id: 1, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439515599/vxzhyfqlkkwsooxad61o.jpg", caption: "post three", location: "Amazon River, Brazil")
Post.create(user_id: 1, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg")

Post.create(user_id: 2, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg")
Post.create(user_id: 2, image_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg")

Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 1)

Like.create(user_id: 3, post_id: 5)

Like.create(user_id: 3, post_id: 6)
Like.create(user_id: 2, post_id: 6)
Like.create(user_id: 1, post_id: 6)


Following.create(follower_id: 1, followee_id: 2)
