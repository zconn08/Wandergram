#Default pics
image_1 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png")
image_2 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439766967/nq5txlf6qyhayerx3avm.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/v1439875601/oviucf9uk9mo4xy6khmx.png")



#Columbus (1)
image_3 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439948412/ivwktvybc580awqdzoie.jpg")
columbus = User.create(username: "OceanBlue1492", password: "password", image_id: image_3.id, bio: "Discovered a new land today. What did you do?")

#Waldo (2)
image_4 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949050/ab7uurcnkc00forxjsju.png")
waldo = User.create(username: "Waldo", password: "password", image_id: image_4.id, bio: "This is where I've been.")

#Bear Grylls (3)
image_5 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439949532/rxdegutaqm7ki1y2vdx7.jpg")
bear = User.create(username: "Man > Wild", password: "password", image_id: image_5.id, bio: "Survival expert, adventure fiend and world traveller")

#Obama (4)
image_6 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439578411/bhy3vgvqcbrmhh4psjxy.jpg")
obama = User.create(username: "barryO", password: "password", image_id: image_6.id, bio: "Just running the free world")

#Musk (5)
image_7 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439578459/dzkstjtvbkslbcwyq4vq.jpg")
musk = User.create(username: "ManMusk", password: "password", image_id: image_7.id, bio: "Tesla, SpaceX and SolarCity during the week. Jetsetter on the weekend. Trying to live life to the fullest.")

#Zuckerberg (6)
image_8 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950274/sjfxeez4cud3h5kftord.jpg")
zuck = User.create(username: "Zuckerberg", password: "password", image_id: image_8.id, bio: "You may not know me but I know you")

#Posts
#Lombard SF / Black and white
image_9 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1439951539/dciiekvjbrpe4dqbwabe.jpg")
lombard = Post.create(user_id: columbus.id, image_id: image_9.id, caption: "The streets don't look like this in Spain", location: "Lombard Street", lat: 37.802139, lng: -122.418740)
#cabo
image_10 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515263/gxrjv8aqyfenx5afs7bl.jpg")
cabo = Post.create(user_id: columbus.id, image_id: image_10.id, caption: "A new land full of tequila", location: "Cabo San Lucas, Mexico", lat: 22.883754, lng: -109.905928)

#Lapland Finland
image_11 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951466/c4airoa12rmhaikqpz5u.jpg")
finland = Post.create(user_id: waldo.id, image_id: image_11.id, caption: "Ice ice baby. Remote living suits me best.", location: "Lapland, Finland", lat: 67.922230, lng: 26.504644)
#cacti
image_12 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515575/ino9pihxezbhu4bpna0c.jpg")
cacti = Post.create(user_id: waldo.id, image_id: image_12.id, caption: "Anyone seen Heisenberg?", location: "Albuquerque, NM, United States", lat: 35.085334, lng: -106.605553)

#Kenya / Elephant / Amboseli
image_13 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951185/tvmhddvv57dcb1gtgaac.jpg")
kenya = Post.create(user_id: bear.id, image_id: image_13.id, caption: "Born to be wild", location: "Nairobi, Kenya", lat: -1.292066, lng: 36.821946)
#Madagascar
image_14 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951605/irl2fegptlh2vmitkoj6.jpg")
madagascar = Post.create(user_id: bear.id, image_id: image_14.id, caption: "Favorite place to be", location: "Madagascar", lat: -18.766947, lng: 46.869107)

#amazon
image_15 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439515599/vxzhyfqlkkwsooxad61o.jpg")
amazon = Post.create(user_id: bear.id, image_id: image_15.id, caption: "New challenges every day. Barely avoided a rattlesnake today.", location: "Amazon River", lat: -2.165109, lng: -55.115513)
#plant
image_16 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439515756/v1va7wrgmb7bamz5abio.jpg")
plant = Post.create(user_id: bear.id, image_id: image_16.id, caption: "Unparalleled beauty", location: "Arapixuna, Brasil", lat: -2.235882, lng: -54.833573)

#Sepia Fishermans Wharf
image_17 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439951843/lckds6eh6ml9obqt2xag.jpg")
wharf = Post.create(user_id: obama.id, image_id: image_17.id, caption: "Presidents can be tourists too", location: "Fisherman's Wharf, San Francisco, CA, United States", lat: 37.808000, lng: -122.417743)

#North Bondi Sdydney
image_18 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1439951738/yv1dcuqk9c1znmsqzk1s.jpg")
sydney = Post.create(user_id: obama.id, image_id: image_18.id, caption: "Getting artsy with the oil paint filter", location: "North Bondi, New South Wales, Australia", lat: -33.885194, lng: 151.274680)
#Franz Glacier New Zealand
image_19 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951386/nbiylzxw9x554uv22rbj.jpg")
glacier = Post.create(user_id: obama.id, image_id: image_19.id, caption: "Looking for a way out lol", location: "Franz Josef Glacier, West Coast, New Zealand", lat: -43.387329, lng: 170.183288)
#vegas
image_20 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439958931/xlkbfxsgef9fcxcsstpi.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439958931/xlkbfxsgef9fcxcsstpi.jpg")
vegas = Post.create(user_id: obama.id, image_id: image_20.id, caption: "Boys trip. Don't tell Michelle", location: "The Strip, Las Vegas, NV, United States", lat: 36.114706, lng: -115.172848)

#Mount Rainer
image_21 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439951667/vbvebhfq9c6tcrdgyh9p.jpg")
rainer = Post.create(user_id: musk.id, image_id: image_21.id, caption: "Good spot for our next dealership", location: "Mount Rainier, Pierce County, WA, United States", lat: 46.879966, lng: -121.726909)
#mountains sepia
image_22 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1439515630/yeyjxf95rwdn5dxyn74t.jpg")
mountains = Post.create(user_id: musk.id, image_id: image_22.id, caption: "It feels good at the top", location: "Liberty Cap, Pierce County, WA, United States", lat: 46.862922, lng: -121.774825)
#GG Bridge From Sausalito
image_23 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439954186/qnnikqsnrq6jbu7270pl.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439954186/qnnikqsnrq6jbu7270pl.jpg")
bridge = Post.create(user_id: musk.id, image_id: image_23.id, caption: "Saucy view", location: "Sausalito, CA, United States", lat: 37.859094, lng: -122.485251)

#Palace of Fine Arts
image_24 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439952069/om1hsz18sadar7aatngc.jpg")
palace = Post.create(user_id: zuck.id, image_id: image_24.id, caption: "Reflections. Life is good", location: "Palace of Fine Arts", lat: 37.801456, lng: -122.448053)
#Alcatraz (The Rock)
image_25 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1439950997/g7rcug314pgxdjctr6er.jpg")
alcatraz = Post.create(user_id: zuck.id, image_id: image_25.id, caption: "Breezy day out on The Rock", location: "Alcatraz Island, San Francisco, CA, United States", lat: 37.826977, lng: -122.422956)

#Cable Car
image_26 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1440119777/bckufk6ehagmpd2tx1rl.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_sepia,w_640,h_640/v1440119777/bckufk6ehagmpd2tx1rl.png")
cable_car = Post.create(user_id: zuck.id, image_id: image_26.id, caption: "Blending in with the tourists", location: "Powell-Market Cable Car Turntable, San Francisco, CA 94102", lat: 37.784907, lng: -122.407645)

#Ghiradelli B & W
image_27 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1440119834/mylddyveswbnlsycn5ny.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_grayscale,w_640,h_640/v1440119834/mylddyveswbnlsycn5ny.png")
ghiradelli = Post.create(user_id: columbus.id, image_id: image_27.id, caption: "Sweet Tooth", location: "Ghirardelli Square, North Point Street, San Francisco, CA", lat: 37.806068, lng: -122.423007)


#ATT
image_28 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440119982/g0lxenq8wbfrjhdbyzsu.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440119982/g0lxenq8wbfrjhdbyzsu.png")
att = Post.create(user_id: zuck.id, image_id: image_28.id, caption: "", location: "AT&T Park, Willie Mays Plaza, San Francisco, CA", lat: 37.778765, lng: -122.389243)
#Lands End
image_29 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440120034/yzwawx4lddjvgrfunl8t.png", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440120034/yzwawx4lddjvgrfunl8t.png")
lands_end = Post.create(user_id: columbus.id, image_id: image_29.id, caption: "Trying to decipher the patterns of the natives", location: "Lands End, Point Lobos Avenue, San Francisco, CA", lat: 37.785511, lng: -122.505681)
#Johor Malyasisa
image_30 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440120135/m26cnxpzhhbuk82qbllf.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440120135/m26cnxpzhhbuk82qbllf.jpg")
johor = Post.create(user_id: zuck.id, image_id: image_30.id, caption: "Stunning", location: "Johor Malyasisa", lat: 1.463769, lng: 103.775482)


#Burj Khalifa Dubai
image_31 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121345/ycsoeolsiffjv8tge5rz.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121345/ycsoeolsiffjv8tge5rz.jpg")
burj = Post.create(user_id: zuck.id, image_id: image_31.id, caption: "Only worries today are the portion size for room service", location: "Burj Khalifa - Downtown Dubai - Dubai - United Arab Emirates", lat: 25.197090, lng: 55.275058)
# Coral Reef Maldives
image_32 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121394/lzultme3bfkcucisb4xf.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121394/lzultme3bfkcucisb4xf.jpg")
burj = Post.create(user_id: columbus.id, image_id: image_32.id, caption: "Literally swimming with the fishes", location: "Maldives", lat: 4.484262, lng: 73.393409)

#GG Bridge SF Side
image_33 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121434/tjwbozhwy8dosaqdoaor.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121434/tjwbozhwy8dosaqdoaor.jpg")
gg_bridge_sf = Post.create(user_id: columbus.id, image_id: image_33.id, caption: "Lost two men sailing here but the view was worth it", location: "Battery to Bluffs Trail, San Francisco, CA", lat: 37.802371, lng: -122.479353)

#Loch Scotland
image_34 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121490/trapuvzjj99yckgfo6om.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121490/trapuvzjj99yckgfo6om.jpg")
loch = Post.create(user_id: columbus.id, image_id: image_34.id, caption: "The only monster out here is the lack of a proper shower", location: "Battery to Bluffs Trail, San Francisco, CA", lat: 56.645536, lng: -4.759635)

#Lofoten Island Norway
image_35 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121520/klesvysugpl9yx3cifa4.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121520/klesvysugpl9yx3cifa4.jpg")
lofoten = Post.create(user_id: waldo.id, image_id: image_35.id, caption: "Pretty Colors", location: "Lofoten, Norway", lat: 68.140324, lng: 13.365638)
#Mangroves peninsular Malyasisa
image_36 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121573/tsqa2znyfs2ewacfrh9d.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121573/tsqa2znyfs2ewacfrh9d.jpg")
mangroves = Post.create(user_id: columbus.id, image_id: image_36.id, caption: "Slow down everyone, you're moving too fast", location: "Sungai Sangga Besar, Malyasisa", lat: 4.840667, lng: 100.590032)
#Manitoba Candada - fox
image_37 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121610/xppwpndp2ucjsjdawmtu.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121610/xppwpndp2ucjsjdawmtu.jpg")
manitoba = Post.create(user_id: obama.id, image_id: image_37.id, caption: "Michelle, can we keep him?", location: "Manitoba, Canada", lat: 4.840667, lng: 100.590032)

#Pomerania Poland
image_38 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121650/cyszc65lps7xii99oron.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121650/cyszc65lps7xii99oron.jpg")
pomerania = Post.create(user_id: zuck.id, image_id: image_38.id, caption: "Quick vacay in Poland", location: "Pomerania, Poland", lat: 53.814399, lng: 17.557642)
#Meroe Sudan
image_39 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121723/bdtr4iyfkwsukw9hv1am.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121723/bdtr4iyfkwsukw9hv1am.jpg")
meroe = Post.create(user_id: zuck.id, image_id: image_39.id, caption: "Fun fact - MySpace remains are buried here", location: "Pyramids of Meroe Shendi Sudan", lat: 16.941161, lng: 33.749494)
#Shanghai
image_40 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121759/k1yucfnj79gzfkcexdjx.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121759/k1yucfnj79gzfkcexdjx.jpg")
shanghai = Post.create(user_id: bear.id, image_id: image_40.id, caption: "Roughing it in the Four Seasons", location: "Shanghai China", lat: 31.224349, lng: 121.481559)

#South Georgia Island
image_41 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121786/igecqqfbbipzexnw65ov.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121786/igecqqfbbipzexnw65ov.jpg")
georgia = Post.create(user_id: columbus.id, image_id: image_41.id, caption: "Suit up", location: "South Georgia Island", lat: -54.389131, lng: -36.650455)
#Sweden Reindeer
image_42 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121819/b25u0uu9gmv42wvgetjj.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/e_oil_paint,w_640,h_640/v1440121819/b25u0uu9gmv42wvgetjj.jpg")
reindeer = Post.create(user_id: zuck.id, image_id: image_42.id, caption: "Santa I think you forgot something", location: "Öravan, Sweden", lat: 64.628493, lng: 18.074503)
#Tiger Beach Bahamas
image_43 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121875/k2osp6wxt041ykzoyyyz.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121875/k2osp6wxt041ykzoyyyz.jpg")
shark = Post.create(user_id: bear.id, image_id: image_43.id, caption: "Once in a lifetime! Look at the size of this Tiger Shark!", location: "Nassau, New Providence, The Bahamas", lat: 25.086601, lng: -77.336236)
#Tulum Mexico
image_44 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121902/zwncb9hh1idexzzuwzs5.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121902/zwncb9hh1idexzzuwzs5.jpg")
tulum = Post.create(user_id: bear.id, image_id: image_44.id, caption: "Cave Diving!!!", location: "Tulum, Mexico", lat: 20.211392, lng: -87.465288)

#Versailles
# image_45 = Image.create(url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121935/wy9799g1zymj80yltbpe.jpg", thumbnail_url: "http://res.cloudinary.com/dmyvxexqn/image/upload/w_640,h_640/v1440121935/wy9799g1zymj80yltbpe.jpg")








Like.create(user_id: waldo.id, post_id: lombard.id)
Like.create(user_id: bear.id, post_id: lombard.id)

Like.create(user_id: waldo.id, post_id: kenya.id)

Like.create(user_id: bear.id, post_id: madagascar.id)
Like.create(user_id: waldo.id, post_id: madagascar.id)
Like.create(user_id: columbus.id, post_id: madagascar.id)

Like.create(user_id: columbus.id, post_id: vegas.id)
Like.create(user_id: waldo.id, post_id: vegas.id)
Like.create(user_id: bear.id, post_id: vegas.id)
Like.create(user_id: obama.id, post_id: vegas.id)
Like.create(user_id: musk.id, post_id: vegas.id)
Like.create(user_id: zuck.id, post_id: vegas.id)


Following.create(follower_id: columbus.id, followee_id: waldo.id)
Following.create(follower_id: columbus.id, followee_id: bear.id)
Following.create(follower_id: columbus.id, followee_id: obama.id)
Following.create(follower_id: columbus.id, followee_id: zuck.id)
Following.create(follower_id: bear.id, followee_id: columbus.id)
