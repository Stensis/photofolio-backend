# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

#user data
User.create(username:"Edwin",password_digest:"edwin",email:"edwin@gmail")
User.create(username:"irene",password_digest:"irene",email:"irene@gmail")
User.create(username:"cherie",password_digest:"cherie",email:"cherie@gmail")
User.create(username:"karrey",password_digest:"karrey",email:"karrey@gmail")
User.create(username:"allan",password_digest:"allan",email:"allan@gmail")

# ##ADMIN DATA

Admin.create(username:"Stephen",password_digest:"stephen",email:"stephen@gmail",user_id:1)
Admin.create(username:"Njuguna",password_digest:"Njuguna",email:"njuguna@gmail",user_id:2)
Admin.create(username:"Salome",password_digest:"salome",email:"salome@gmail",user_id:3)


# #Booking 
Booking.create(username:"Anita",email:"anita@gmail.com",user_id:3,session_type:"birthday",booking_date:"12/9/2026")
Booking.create(username:"Amos",email:"amos@gmail.com", user_id:2,session_type:"burial",booking_date:"14/3/2023")
Booking.create(username:"Jane",email:"jane@gmail.com", user_id:1,session_type:"wedding",booking_date:"2/12/2055")
Booking.create(username:"Rose",email:"rose@gmail.com", user_id:4,session_type:"graduation",booking_date:"14/9/2030")
Booking.create(username:"Murife",email:"murife@gmail.com", user_id:5,session_type:"ruracio",booking_date:"16/7/2023")

# ## Gallery data
# weddings
Gallery.create(category:"wedding",title:"happily ever after",image:"https://images.unsplash.com/photo-1583939003579-730e3918a45a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2VkZGluZ3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",date:"4/34/2016",admin_id:2)
Gallery.create(category:"wedding",title:"love wins",image:"https://media.istockphoto.com/photos/bride-and-groom-getting-married-in-beach-ceremony-picture-id179227637?k=20&m=179227637&s=612x612&w=0&h=I00vLY7aGeBZ4rb0KAtr1ehoDNtLl526CVPUSSu8RsE=",date:"23/03/2019",admin_id:1)
Gallery.create(category:"wedding",title:"maldavies",image:"https://media.istockphoto.com/photos/bride-and-groom-with-coconuts-on-the-beach-picture-id531015447?k=20&m=531015447&s=612x612&w=0&h=ZZJlTxI-FYu-_F_sB3LegFTj4zVgP6n-TY8Dh0Uk6ZE=",date:"12/07/2014",admin_id:3)
Gallery.create(category:"wedding",title:"perfect match",image:"https://media.istockphoto.com/photos/engagement-ring-on-the-beach-picture-id537663943?k=20&m=537663943&s=612x612&w=0&h=i7VSi9WqGOmO-8xMHGTYO2i1HMbS66_QM0Wm8zuwbj4=",date:"23/12/2018",admin_id:2)
Gallery.create(category:"wedding",title:"mr & mrs karimi",image:"https://media.istockphoto.com/photos/groom-carrying-bride-at-beautiful-beach-wedding-picture-id177846092?k=20&m=177846092&s=612x612&w=0&h=GfXt0jygCKX764rAMloxiz2ANBUcx2ROnF7Hrv4Jh1I=",date:"18",admin_id:1)

# # burial
Gallery.create(category:"burial",title:"gone too soon",image:"https://media.istockphoto.com/photos/cemetery-casket-waiting-for-memorial-funeral-service-picture-id1395456705?k=20&m=1395456705&s=612x612&w=0&h=i4JbNQipKXo6187gGxaRX-euhIxQNKJxuIGVOj1X0pU=",date:"12/3/2092",admin_id:3)
Gallery.create(category:"burial",title:"shine with the angels",image:"https://media.istockphoto.com/photos/sympathy-card-funeral-urn-with-praying-hands-and-burning-candles-picture-id1332079363?k=20&m=1332079363&s=612x612&w=0&h=4pWAiv-YTkCBZal-DWd8uEBo5Rh0PfMrKXEN-CmXZew=",date:"12/3/2322",admin_id:2)
Gallery.create(category:"burial",title:"gone too soon",image:"https://media.istockphoto.com/photos/funerary-urn-with-ashes-of-dead-and-flowers-at-funeral-picture-id1320130596?k=20&m=1320130596&s=612x612&w=0&h=wd5QKanW6dOM8Kc1oGg-LxNhmmg3vx7qKKxjtlJxs10=",date:"12/5/2092",admin_id:1)
# #portraits
Gallery.create(category:"potraits",title:"black woman",image:"https://media.istockphoto.com/photos/excited-woman-wearing-rainbow-cardigan-picture-id1327495437?k=20&m=1327495437&s=612x612&w=0&h=uYgb28tIs15a-rrnli1gqAiG9mBhazPrui9FRpqu9UM=",date:"12/3/2092",admin_id:3)
Gallery.create(category:"potraits",title:"model potrait",image:"https://media.istockphoto.com/photos/neon-blue-purple-lights-posing-in-studio-asian-chinese-female-fashion-picture-id1337566785?k=20&m=1337566785&s=612x612&w=0&h=NtAOhjihioCwCHEs4ivFvrumc8MGb9g8KCFx-w9AnXQ=",date:"12/3/2023",admin_id:2)
Gallery.create(category:"photographer portrait",title:"mother nature",image:"https://media.istockphoto.com/photos/professional-photographer-at-the-studio-african-american-man-wear-picture-id1335978911?k=20&m=1335978911&s=612x612&w=0&h=5AJpsG4d9YblEocZ2s9xQ9T3SCV-j11BrIZH_B6mDNM=",date:"12/3/2034",admin_id:1)

# #random pictures

Gallery.create(category:"cloudy skies",title:"beautiful nature",image:"https://media.istockphoto.com/photos/clouds-aerial-view-picture-id878607638?k=20&m=878607638&s=612x612&w=0&h=WuQLi7EtzrUMVoAsFOL6y3XoALL-nwBGCBDcbTqux9Q=",date:"12/3/2022",admin_id:3)
Gallery.create(category:"indoor gaming",title:"yolo",image:"https://media.istockphoto.com/photos/africanamerican-people-playing-board-games-at-home-picture-id1421092128?k=20&m=1421092128&s=612x612&w=0&h=1SGLgj-UOG7BtySsk2VvEb98wR_K6C5OLW-dLsc0XrU=",date:"12/3/2042",admin_id:2)

# #travelling

Gallery.create(category:"mountain climbing",title:"adventure",image:"https://media.istockphoto.com/photos/weve-made-it-all-this-way-i-am-proud-picture-id904172104?k=20&m=904172104&s=612x612&w=0&h=UWlcgOm5TaVPKo2impWxaibMS6ECQVUOpetNZz3ReMQ=",date:"12/3/2122",admin_id:1)
Gallery.create(category:"boot riding",title:"water lover",image:"https://media.istockphoto.com/photos/lady-with-kayak-picture-id516449022?k=20&m=516449022&s=612x612&w=0&h=6TCzYP9ohT2j3g602N4exOdUbbuzYqDfhqsTgErLM_M=",date:"12/3/2172",admin_id:3)
Gallery.create(category:"maldavis",title:"happy moments",image:"https://media.istockphoto.com/photos/young-couple-share-a-romantic-dinner-with-candles-on-beach-picture-id168763345?b=1&k=20&m=168763345&s=170667a&w=0&h=vJJaQnkkUJ_rnQGIiNdccZKizoUimNuLAaWtdA83QEo=",date:"12/3/2272",admin_id:1)
#wildlife
Gallery.create(category:"girraffes",title:"serengeti park",image:"https://media.istockphoto.com/photos/two-rothschilds-giraffes-in-northern-uganda-picture-id1307291479?b=1&k=20&m=1307291479&s=170667a&w=0&h=SWKMKkWhu1CS7l55vWgMPZYanqjdwAia6puS8YSCpEo=",date:"12/3/2032",admin_id:3)
Gallery.create(category:"cheetahs",title:"hibernating",image:"https://media.istockphoto.com/photos/cougar-also-known-as-puma-mountain-lion-mountain-cat-catamount-or-picture-id1391478824?b=1&k=20&m=1391478824&s=170667a&w=0&h=M6ClRaKVlAsdWhcyXZriEmF6ohLBry7SZ2Ryl-GQXhM=",date:"12/3/2052",admin_id:2)
Gallery.create(category:"parrots",title:"living",image:"https://media.istockphoto.com/photos/funny-lovebirds-picture-id1326671788?b=1&k=20&m=1326671788&s=170667a&w=0&h=AxG6YZ5VMwC22EOvzIYEswqUpdFwxc3FiZxS8TYd5fM=",date:"12/3/2072",admin_id:1)
Gallery.create(category:"water turtle",title:"swimming",image:"https://media.istockphoto.com/photos/turtle-closeup-with-school-of-fish-picture-id1170804921?b=1&k=20&m=1170804921&s=170667a&w=0&h=stDhp2NkErMg69SwcvKGJusTJNmQugg5SvUqwrtdPLY=",date:"12/3/2034",admin_id:3)
# # nature
Gallery.create(category:"mother nature",title:"spring",image:"https://media.istockphoto.com/photos/vodice-landscape-with-white-pines-and-pastures-creek-and-untamed-in-picture-id1371072533?b=1&k=20&m=1371072533&s=170667a&w=0&h=jnomNY_qciCuuvmEvHC3Uc91pRku4fCZ2q77Qw1rVrU=",date:"12/3/2032",admin_id:1)
Gallery.create(category:"elephant",title:"food hunting",image:"https://images.unsplash.com/photo-1549366021-9f761d450615?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2lsZGxpZmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",date:"12/3/2092",admin_id:2)
Gallery.create(category:"cat",title:"surprised",image:"https://images.unsplash.com/photo-1526336024174-e58f5cdd8e13?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2lsZGxpZmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",date:"12/3/2092",admin_id:1)

# #reviews
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:1,user_id:2)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:2,user_id:1)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:3,user_id:5)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:4,user_id:4)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:5,user_id:3)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:6,user_id:2)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:7,user_id:1)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:8,user_id:5)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:9,user_id:4)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:10,user_id:3)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:11,user_id:2)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:12,user_id:1)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:13,user_id:5)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:14,user_id:4)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:15,user_id:3)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:16,user_id:2)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:17,user_id:1)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:18,user_id:5)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:19,user_id:4)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:20,user_id:3)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:21,user_id:2)
Review.create(review:"The staff was great. The receptionists were very helpful and answered all our questions. The room was clean and bright, and room service was always on time. Will be coming back!",gallery_id:22,user_id:1)
