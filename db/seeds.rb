# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#set default password for users
password = "password"


#Create some users that have created exchanges on website
hemesh = User.create(first_name: "Hemesh", last_name: "Patel", username: "hemesh", password: password, password_confirmation: password, likes: 0, balance: 1000)
jason = User.create(first_name: "Jason", last_name: "Le", username: "jason", password: password, password_confirmation: password, likes: 0, balance: 1000)
edwin = User.create(first_name: "Edwin", last_name: "Kim", username: "edwin", password: password, password_confirmation: password, likes: 0, balance: 1000)

#Create types of products:
type1 = Type.create(name: "iPhone")
type2 = Type.create(name: "MacBook")

#Create all phone products that users can select from:
iPhone_X = Product.create(name: "iPhone X", type_id: 1, model: "A1X00", image_url: "https://static.swappa.com/images/cache/91/de/91dec1893845dad70aa430166070fdf4.png")
iPhone_XR = Product.create(name: "iPhone Xr", type_id: 1, model: "A1XR0", image_url: "https://static.swappa.com/images/cache/26/1e/261ed909a926f03875f4be3b2c5f3ddb.png")
iPhone_XS = Product.create(name: "iPhone Xs", type_id: 1, model: "A1XS0", image_url: "https://static.swappa.com/images/cache/62/9f/629f463797d15cedc41504a2e861007c.png")
iPhone_XS_MAX = Product.create(name: "iPhone Xs Max", type_id: 1, model: "A1XSM", image_url: "https://static.swappa.com/images/cache/19/9a/199a8276af100c1edbea104d4b6348ad.png")
iPhone_8 = Product.create(name: "iPhone 8", type_id: 1, model: "A18SM", image_url: "https://static.swappa.com/images/cache/ae/d6/aed6b6696fa00664c04651626f69571f.png")
iPhone_8_PLUS = Product.create(name: "iPhone 8 Plus", type_id: 1, model: "A18PL", image_url: "https://static.swappa.com/images/cache/ee/25/ee25ac6c7a6343c7420fac7a987fea0b.png")

#Create all laptop products that users can select from:
macBook_12 = Product.create(name: "MacBook ", type_id: 2, model: "AMB12", image_url: "https://static.swappa.com/images/cache/c5/6c/c56c52490d05663aea24ce70c24ec243.png")
macBook_Pro_13 = Product.create(name: "MacBook Pro 13inch", type_id: 2, model: "AMB13", image_url: "https://static.swappa.com/images/cache/fd/47/fd479986b2b3d809b5d88b7c688ea71e.png")
macBook_Pro_15 = Product.create(name: "MacBook Pro 15inch", type_id: 2, model: "AMB15", image_url: "https://static.swappa.com/images/cache/96/59/9659358c7dea51b79b80b8940eec6d81.png")
macBook_Air = Product.create(name: "MacBook Air", type_id: 2, model: "AMBAI", image_url: "https://static.swappa.com/images/cache/d4/f9/d4f968d512b6e42f68ea20711a9f34e5.png")

#Create listings for each product
listing_X_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_X.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 529.99)
listing_X_2 = Listing.create(user_id: jason.id, product_id: iPhone_X.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_X_3 = Listing.create(user_id: edwin.id, product_id: iPhone_X.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_X_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_X.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_X_5 = Listing.create(user_id: jason.id, product_id: iPhone_X.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 215.99)
listing_X_6 = Listing.create(user_id: edwin.id, product_id: iPhone_X.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 349.49)

listing_XR_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_XR.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_XR_2 = Listing.create(user_id: jason.id, product_id: iPhone_XR.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_XR_3 = Listing.create(user_id: edwin.id, product_id: iPhone_XR.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_XR_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_XR.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_XR_5 = Listing.create(user_id: jason.id, product_id: iPhone_XR.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 215.99)
listing_XR_6 = Listing.create(user_id: edwin.id, product_id: iPhone_XR.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 349.49)

listing_XS_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_XS.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_XS_2 = Listing.create(user_id: jason.id, product_id: iPhone_XS.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_XS_3 = Listing.create(user_id: edwin.id, product_id: iPhone_XS.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_XS_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_XS.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_XS_5 = Listing.create(user_id: jason.id, product_id: iPhone_XS.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 215.99)
listing_XS_6 = Listing.create(user_id: edwin.id, product_id: iPhone_XS.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 349.49)

listing_XS_MAX_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_XS_MAX.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_XS_MAX_2 = Listing.create(user_id: jason.id, product_id: iPhone_XS_MAX.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_XS_MAX_3 = Listing.create(user_id: edwin.id, product_id: iPhone_XS_MAX.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_XS_MAX_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_XS_MAX.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_XS_MAX_5 = Listing.create(user_id: jason.id, product_id: iPhone_XS_MAX.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 215.99)
listing_XS_MAX_6 = Listing.create(user_id: edwin.id, product_id: iPhone_XS_MAX.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 349.49)

listing_8_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_8.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_8_2 = Listing.create(user_id: jason.id, product_id: iPhone_8.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_8_3 = Listing.create(user_id: edwin.id, product_id: iPhone_8.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_8_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_8.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_8_5 = Listing.create(user_id: jason.id, product_id: iPhone_8.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 215.99)
listing_8_6 = Listing.create(user_id: edwin.id, product_id: iPhone_8.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 349.49)

listing_8_PLUS_1 = Listing.create(user_id: hemesh.id, product_id: iPhone_8_PLUS.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 777.99)
listing_8_PLUS_2 = Listing.create(user_id: jason.id, product_id: iPhone_8_PLUS.id, condition: "mint", color: "grey", storage: "32gb", memory: "6gb", price: 699.99)
listing_8_PLUS_3 = Listing.create(user_id: edwin.id, product_id: iPhone_8_PLUS.id, condition: "good", color: "black", storage: "64gb", memory: "8gb", price: 567.79)
listing_8_PLUS_4 = Listing.create(user_id: hemesh.id, product_id: iPhone_8_PLUS.id, condition: "fair", color: "grey", storage: "128b", memory: "4gb", price: 345.69)
listing_8_PLUS_5 = Listing.create(user_id: jason.id, product_id: iPhone_8_PLUS.id, condition: "new", color: "red", storage: "32gb", memory: "4gb", price: 500.99)
listing_8_PLUS_6 = Listing.create(user_id: edwin.id, product_id: iPhone_8_PLUS.id, condition: "mint", color: "silver", storage: "16gb", memory: "8gb", price: 475.49)

listing_mb12_1 = Listing.create(user_id: hemesh.id, product_id: macBook_12.id, condition: "new", color: "silver", storage: "128gb", memory: "8gb", price: 599.99)
listing_mb12_2 = Listing.create(user_id: jason.id, product_id: macBook_12.id, condition: "new", color: "grey", storage: "256gb", memory: "16gb", price: 615.99)
listing_mb12_3 = Listing.create(user_id: edwin.id, product_id: macBook_12.id, condition: "new", color: "silver", storage: "512gb", memory: "8gb", price: 800.99)
listing_mb12_4 = Listing.create(user_id: hemesh.id, product_id: macBook_12.id, condition: "new", color: "grey", storage: "1tb", memory: "8gb", price: 600.99)
listing_mb12_5 = Listing.create(user_id: jason.id, product_id: macBook_12.id, condition: "new", color: "silver", storage: "512gb", memory: "16gb", price: 548.99)
listing_mb12_6 = Listing.create(user_id: edwin.id, product_id: macBook_12.id, condition: "new", color: "grey", storage: "256gb", memory: "8gb", price: 788.99)

listing_mb_Pro13_1 = Listing.create(user_id: hemesh.id, product_id: macBook_Pro_13.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_mb_Pro13_2 = Listing.create(user_id: jason.id, product_id: macBook_Pro_13.id, condition: "new", color: "grey", storage: "256gb", memory: "16gb", price: 615.99)
listing_mb_Pro13_3 = Listing.create(user_id: edwin.id, product_id: macBook_Pro_13.id, condition: "new", color: "silver", storage: "512gb", memory: "8gb", price: 800.99)
listing_mb_Pro13_4 = Listing.create(user_id: hemesh.id, product_id: macBook_Pro_13.id, condition: "new", color: "grey", storage: "1tb", memory: "8gb", price: 600.99)
listing_mb_Pro13_5 = Listing.create(user_id: jason.id, product_id: macBook_Pro_13.id, condition: "new", color: "silver", storage: "512gb", memory: "16gb", price: 548.99)
listing_mb_Pro13_6 = Listing.create(user_id: edwin.id, product_id: macBook_Pro_13.id, condition: "new", color: "grey", storage: "256gb", memory: "8gb", price: 788.99)

listing_mb_Pro15_1 = Listing.create(user_id: hemesh.id, product_id: macBook_Pro_15.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_mb_Pro15_2 = Listing.create(user_id: jason.id, product_id: macBook_Pro_15.id, condition: "new", color: "grey", storage: "256gb", memory: "16gb", price: 615.99)
listing_mb_Pro15_3 = Listing.create(user_id: edwin.id, product_id: macBook_Pro_15.id, condition: "new", color: "silver", storage: "512gb", memory: "8gb", price: 800.99)
listing_mb_Pro15_4 = Listing.create(user_id: hemesh.id, product_id: macBook_Pro_15.id, condition: "new", color: "grey", storage: "1tb", memory: "8gb", price: 600.99)
listing_mb_Pro15_5 = Listing.create(user_id: jason.id, product_id: macBook_Pro_15.id, condition: "new", color: "silver", storage: "512gb", memory: "16gb", price: 548.99)
listing_mb_Pro15_6 = Listing.create(user_id: edwin.id, product_id: macBook_Pro_15.id, condition: "new", color: "grey", storage: "256gb", memory: "8gb", price: 788.99)

listing_mb_Air_1 = Listing.create(user_id: hemesh.id, product_id: macBook_Air.id, condition: "new", color: "silver", storage: "16gb", memory: "4gb", price: 100.99)
listing_mb_Air_2 = Listing.create(user_id: jason.id, product_id: macBook_Air.id, condition: "new", color: "grey", storage: "256gb", memory: "16gb", price: 615.99)
listing_mb_Air_3 = Listing.create(user_id: edwin.id, product_id: macBook_Air.id, condition: "new", color: "silver", storage: "512gb", memory: "8gb", price: 800.99)
listing_mb_Air_4 = Listing.create(user_id: hemesh.id, product_id: macBook_Air.id, condition: "new", color: "grey", storage: "1tb", memory: "8gb", price: 600.99)
listing_mb_Air_5 = Listing.create(user_id: jason.id, product_id: macBook_Air.id, condition: "new", color: "silver", storage: "512gb", memory: "16gb", price: 548.99)
listing_mb_Air_6 = Listing.create(user_id: edwin.id, product_id: macBook_Air.id, condition: "new", color: "grey", storage: "256gb", memory: "8gb", price: 788.99)

#Create reviews for each product
review_X = Review.create(product_id: iPhone_X.id, user_id: hemesh.id, content: "Was the first of it's kind but now it's outdated")
review_XR = Review.create(product_id: iPhone_XR.id, user_id: jason.id, content: "XR has nice colors")
review_XS = Review.create(product_id: iPhone_XS.id, user_id: edwin.id, content: "The XS dual camera is amazing!!")
review_XS_MAX = Review.create(product_id: iPhone_XS_MAX.id, user_id: hemesh.id, content: "The XS MAX has such a nice screen. It's like looking out a window...(um)")
review_8 = Review.create(product_id: iPhone_8.id, user_id: jason.id, content: "I dropped my 8 and it shattered. Dissapointed in the build quality")
review_8_PLUS = Review.create(product_id: iPhone_8_PLUS.id, user_id: edwin.id, content: "The plus is nice upgrade from the iPhone 5 I had. It's blazing fast in comparison!")
review_mb_12= Review.create(product_id: macBook_12.id, user_id: hemesh.id, content: "This macbook has such a small screen. Great for students not so much for professionals.")
review_mb_Pro_13 = Review.create(product_id: macBook_Pro_13.id, user_id: jason.id, content: "My everyday workhorse. I love the portability!")
review_mb_Pro_15 = Review.create(product_id: macBook_Pro_15.id, user_id: edwin.id, content: "This thing is a beast! I can edit video on the fly and listen to spotify!")
review_mb_Air = Review.create(product_id: macBook_Air.id, user_id: hemesh.id, content: "Super light and easy to carry around!")
