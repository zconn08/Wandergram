#Default pics
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png")
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439875601/oviucf9uk9mo4xy6khmx.png")

#Columbus (1)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg")
User.create(username: "OceanBlue1492", password: "password", image_id: 3, bio: "Discovered a new land today. What did you do?")

#Waldo (2)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png")
User.create(username: "Waldo", password: "password", image_id: 4, bio: "This is where I've been.")

#Bear Grylls (3)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg")
User.create(username: "Man > Wild", password: "password", image_id: 5, bio: "Survival expert, adventure fiend and world traveller")

#Obama (4)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg")
User.create(username: "barryO", password: "password", image_id: 6, bio: "Just running the free world")

#Musk (5)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg")
User.create(username: "ManMusk", password: "password", image_id: 7, bio: "Tesla, SpaceX and SolarCity during the week. Jetsetter on the weekend. Trying to live life to the fullest.")

#Zuckerberg (6)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg")
User.create(username: "Zuckerberg", password: "password", image_id: 8, bio: "You may not know me but I know you")

# User.create(username: "zconn", password: "password", image_id: 9, bio: "Working on an instagram clone")
# Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg")

#Posts
#cabo
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg")
Post.create(user_id: 1, image_id: 3, caption: "Beach Life", location: "Cabo San Lucas, Mexico", lat: 22.883754, lng: -109.905928)

#cacti
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg")
#amazon
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg")
#mountains sepia
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg")
#sunset on a mountain
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg")
#plant
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg")
#Alcatraz (The Rock)
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg")
#Kenya / Elephant / Amboseli
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg")
#Franz Glacier New Zealand
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg")
#Lapland Finland
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg")
#Lombard SF / Black and white
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg")
#Madagascar
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg")
#Mount Rainer
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg")
#North Bondi Sdydney
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg")
#Sepia Fishermans Wharf
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg")
#Palace of Fine Arts
Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg")






Post.create(user_id: 1, image_id: 4, caption: "Cacti at Sunset", location: "Albuquerque, New Mexico", lat: 35.085334, lng: -106.605553)
Post.create(user_id: 1, image_id: 5, caption: "River Living", location: "Amazon River, Brazil", lat: -2.165109, lng: -55.115513)
Post.create(user_id: 1, image_id: 6)

Post.create(user_id: 2, image_id: 7, location: "Mid Market", lat: 37.787912, lng: -122.401943)
Post.create(user_id: 2, image_id: 8, location: "Crissy Fields, San Francisco", lat: 37.803682, lng: -122.468513)

Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 1)

Like.create(user_id: 3, post_id: 5)

Like.create(user_id: 3, post_id: 6)
Like.create(user_id: 2, post_id: 6)
Like.create(user_id: 1, post_id: 6)


Following.create(follower_id: 1, followee_id: 2)
Following.create(follower_id: 3, followee_id: 1)
