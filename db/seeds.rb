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
iphone_X = Product.create(name: "iPhone X", type_id: 1, model: "A1X00")
iphone_XR = Product.create(name: "iPhone XR", type_id: 1, model: "A1XR0")
iphone_XS = Product.create(name: "iPhone XS", type_id: 1, model: "A1XS0")
iphone_XS_MAX = Product.create(name: "iPhone XS Max", type_id: 1, model: "A1XSM")
iphone_8 = Product.create(name: "iPhone 8", type_id: 1, model: "A18SM")
iphone_8_PLUS = Product.create(name: "iPhone 8 Plus", type_id: 1, model: "A18PL")

#Creating all laptop products that users can select from:
macBook_12 = Product.create(name: "MacBook ", type_id: 2, model: "AMB12")
macBook_Pro_13 = Product.create(name: "MacBook Pro 13inch", type_id: 2, model: "AMB13")
macBook_Pro_15 = Product.create(name: "MacBook Pro 15inch", type_id: 2, model: "AMB15")
macBook_Air = Product.create(name: "MacBook Air", type_id: 2, model: "AMBAI")