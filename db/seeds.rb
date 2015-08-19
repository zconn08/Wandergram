#Default pics
image_1 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png")
image_2 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439875601/oviucf9uk9mo4xy6khmx.png")

#Columbus (1)
image_3 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg")
User.create(username: "OceanBlue1492", password: "password", image_id: image_3.id, bio: "Discovered a new land today. What did you do?")

#Waldo (2)
image_4 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png")
User.create(username: "Waldo", password: "password", image_id: image_4.id, bio: "This is where I've been.")

#Bear Grylls (3)
image_5 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg")
User.create(username: "Man > Wild", password: "password", image_id: image_5.id, bio: "Survival expert, adventure fiend and world traveller")

#Obama (4)
image_6 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg")
User.create(username: "barryO", password: "password", image_id: image_6.id, bio: "Just running the free world")

#Musk (5)
image_7 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg")
User.create(username: "ManMusk", password: "password", image_id: image_7.id, bio: "Tesla, SpaceX and SolarCity during the week. Jetsetter on the weekend. Trying to live life to the fullest.")

#Zuckerberg (6)
image_8 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg")
User.create(username: "Zuckerberg", password: "password", image_id: image_8.id, bio: "You may not know me but I know you")

#Posts
#Lombard SF / Black and white
image_9 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg")
Post.create(user_id: 1, image_id: image_9.id, caption: "The streets don't look like this in Spain", location: "Lombard Street", lat: 37.802139, lng: -122.418740)
#cabo
image_10 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg")
Post.create(user_id: 1, image_id: image_10.id, caption: "A new land full of tequila", location: "Cabo San Lucas, Mexico", lat: 22.883754, lng: -109.905928)

#Lapland Finland
image_11 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg")
Post.create(user_id: 2, image_id: image_11.id, caption: "Ice ice baby. Remote living suits me best.", location: "Lapland, Finland", lat: 67.922230, lng: 26.504644)
#cacti
image_12 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg")
Post.create(user_id: 2, image_id: image_12.id, caption: "Anyone seen Heisenberg?", location: "Albuquerque, NM, United States", lat: 35.085334, lng: -106.605553)

#Kenya / Elephant / Amboseli
image_13 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg")
Post.create(user_id: 3, image_id: image_13.id, caption: "No match for me. I might have him for dinner.", location: "Nairobi, Kenya", lat: -1.292066, lng: 36.821946)
#Madagascar
image_14 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg")
Post.create(user_id: 3, image_id: image_14.id, caption: "Favorite place to be", location: "Madagascar", lat: -18.766947, lng: 46.869107)

#amazon
image_15 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg")
Post.create(user_id: 3, image_id: image_15.id, caption: "New challenges every day. Barely avoided a rattlesnake today.", location: "Amazon River", lat: -2.165109, lng: -55.115513)
#plant
image_16 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg")
Post.create(user_id: 3, image_id: image_16.id, caption: "Unparalleled beauty", location: "Arapixuna, Brasil", lat: -2.235882, lng: -54.833573)

#Sepia Fishermans Wharf
image_17 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg")
Post.create(user_id: 4, image_id: image_17.id, caption: "Presidents can be tourists too", location: "Fisherman's Wharf, San Francisco, CA, United States", lat: 37.808000, lng: -122.417743)

#North Bondi Sdydney
image_18 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg")
Post.create(user_id: 4, image_id: image_18.id, caption: "Getting artsy with the oil paint filter", location: "North Bondi, New South Wales, Australia", lat: -33.885194, lng: 151.274680)
#Franz Glacier New Zealand
image_19 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg")
Post.create(user_id: 4, image_id: image_19.id, caption: "Looking for a way out lol", location: "Franz Josef Glacier, West Coast, New Zealand", lat: -43.387329, lng: 170.183288)
#vegas
image_20 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439958931/xlkbfxsgef9fcxcsstpi.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439958931/xlkbfxsgef9fcxcsstpi.jpg")
Post.create(user_id: 4, image_id: image_20.id, caption: "Boys trip. Don't tell Michelle", location: "The Strip, Las Vegas, NV, United States", lat: 36.114706, lng: -115.172848)

#Mount Rainer
image_21 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg")
Post.create(user_id: 5, image_id: image_21.id, caption: "Good spot for our next dealership", location: "Mount Rainier, Pierce County, WA, United States", lat: 46.879966, lng: -121.726909)
#mountains sepia
image_22 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg")
Post.create(user_id: 5, image_id: image_22.id, caption: "It feels good at the top", location: "Liberty Cap, Pierce County, WA, United States", lat: 46.862922, lng: -121.774825)
#GG Bridge From Sausalito
image_23 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439954186/qnnikqsnrq6jbu7270pl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439954186/qnnikqsnrq6jbu7270pl.jpg")
Post.create(user_id: 5, image_id: image_23.id, caption: "Saucy view", location: "Sausalito, CA, United States", lat: 37.859094, lng: -122.485251)


#Palace of Fine Arts
image_24 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg")
Post.create(user_id: 6, image_id: image_24.id, caption: "Reflections. Life is good", location: "Palace of Fine Arts", lat: 37.801456, lng: -122.448053)
#Alcatraz (The Rock)
image_25 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg")
Post.create(user_id: 6, image_id: image_25.id, caption: "Fun fact - MySpace remains are buried here", location: "Alcatraz Island, San Francisco, CA, United States", lat: 37.826977, lng: -122.422956)




Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 3, post_id: 1)

Like.create(user_id: 3, post_id: 5)

Like.create(user_id: 3, post_id: 6)
Like.create(user_id: 2, post_id: 6)
Like.create(user_id: 1, post_id: 6)

Like.create(user_id: 1, post_id: 12)
Like.create(user_id: 2, post_id: 12)
Like.create(user_id: 3, post_id: 12)
Like.create(user_id: 4, post_id: 12)
Like.create(user_id: 5, post_id: 12)
Like.create(user_id: 6, post_id: 12)


Following.create(follower_id: 1, followee_id: 2)
Following.create(follower_id: 1, followee_id: 3)
Following.create(follower_id: 1, followee_id: 4)
Following.create(follower_id: 1, followee_id: 6)
Following.create(follower_id: 3, followee_id: 1)

# User.create(username: "zconn", password: "password", image_id: 9, bio: "Working on an instagram clone")
# Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439578313/vacqotwbigohicyhjfp0.jpg")
# #sunset on a mountain
# Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515706/jz50ihure223pxs5zpjz.jpg")

# Post.create(user_id: 1, image_id: 4, caption: "Cacti at Sunset", location: "Albuquerque, New Mexico", lat: 35.085334, lng: -106.605553)
# Post.create(user_id: 1, image_id: 5, caption: "River Living", location: "Amazon River, Brazil", lat: -2.165109, lng: -55.115513)
# Post.create(user_id: 1, image_id: 6)
#
# Post.create(user_id: 2, image_id: 7, location: "Mid Market", lat: 37.787912, lng: -122.401943)
# Post.create(user_id: 2, image_id: 8, location: "Crissy Fields, San Francisco", lat: 37.803682, lng: -122.468513)
