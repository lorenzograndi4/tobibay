# Generate products

Product.destroy_all
Cart.destroy_all
Profile.destroy_all
User.destroy_all


product1 = Product.create(name: "chainsaw", price: "199.00", description: "careful", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499768608/codaisseurify/chainsaw.jpg")
product2 = Product.create(name: "umbrella", price: "17.00", description: "use me", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499768608/codaisseurify/umbrella.jpg")
product3 = Product.create(name: "spoon", price: "3.50", description: "love you", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499768608/codaisseurify/spoon.jpg")
product4 = Product.create(name: "corkscrew", price: "5.00", description: "hi!", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499768609/codaisseurify/corkscrew.jpg")
product5 = Product.create(name: "drill", price: "333.50", description: "mysterious", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499769594/codaisseurify/drill.jpg")
product6 = Product.create(name: "agenda", price: "15.00", description: "whatami", image: "http://res.cloudinary.com/lorenzocloudinary/image/upload/v1499769698/codaisseurify/agenda.jpg")
#
Mil = User.create!(email: "Milienko@gmail.com", password:"testtest")

user1 = User.create!(email: "Tobienko@gmail.com", password:"testtest")

profile1 = Profile.create(first_name: "test user", last_name: "test surname", user_id: user1.id)

profile1.user_id = user1.id
profile1.save

cart1 = Cart.create(user_id: user1.id, product_id: product1.id, total_price:"100", amount:"10", selected_products:[])
cart1.user_id = user1.id
cart1.save

for users in 1..10
  user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(8))
  profile = Profile.create()
  cart = Cart.create(user_id: user1.id, product_id: [], total_price:"100", amount:"10", selected_products:[])
  profile.user_id = user.id
  cart.user_id = user.id
  profile.save
  cart.save
end


puts "#{Product.all.count} products created."
puts "#{User.all.count} users created."
puts "#{Profile.all.count} profiles created."
puts "#{Cart.all.count} carts created."
