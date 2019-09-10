# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Creating types of products:
type1 = Type.create(name: "iPhone")
type2 = Type.create(name: "MacBook")

#Creating all phone products that users can select from:
iphone_X = Product.create(name: "iPhone X", type_id: 1, model: "A1X00", image_url: "https://static.swappa.com/images/cache/91/de/91dec1893845dad70aa430166070fdf4.png")
iphone_XR = Product.create(name: "iPhone Xr", type_id: 1, model: "A1XR0", image_url: "https://static.swappa.com/images/cache/26/1e/261ed909a926f03875f4be3b2c5f3ddb.png")
iphone_XS = Product.create(name: "iPhone Xs", type_id: 1, model: "A1XS0", image_url: "https://static.swappa.com/images/cache/62/9f/629f463797d15cedc41504a2e861007c.png")
iphone_XS_MAX = Product.create(name: "iPhone Xs Max", type_id: 1, model: "A1XSM", image_url: "https://static.swappa.com/images/cache/19/9a/199a8276af100c1edbea104d4b6348ad.png")
iphone_8 = Product.create(name: "iPhone 8", type_id: 1, model: "A18SM", image_url: "https://static.swappa.com/images/cache/ae/d6/aed6b6696fa00664c04651626f69571f.png")
iphone_8_PLUS = Product.create(name: "iPhone 8 Plus", type_id: 1, model: "A18PL", image_url: "https://static.swappa.com/images/cache/ee/25/ee25ac6c7a6343c7420fac7a987fea0b.png")

#Creating all laptop products that users can select from:
macBook_12 = Product.create(name: "MacBook ", type_id: 2, model: "AMB12", image_url: "https://static.swappa.com/images/cache/c5/6c/c56c52490d05663aea24ce70c24ec243.png")
macBook_Pro_13 = Product.create(name: "MacBook Pro 13inch", type_id: 2, model: "AMB13", image_url: "https://static.swappa.com/images/cache/fd/47/fd479986b2b3d809b5d88b7c688ea71e.png")
macBook_Pro_15 = Product.create(name: "MacBook Pro 15inch", type_id: 2, model: "AMB15", image_url: "https://static.swappa.com/images/cache/96/59/9659358c7dea51b79b80b8940eec6d81.png")
macBook_Air = Product.create(name: "MacBook Air", type_id: 2, model: "AMBAI", image_url: "https://static.swappa.com/images/cache/d4/f9/d4f968d512b6e42f68ea20711a9f34e5.png")