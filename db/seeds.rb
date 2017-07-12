# Generate products

Product.destroy_all
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

for users in 1..10
  user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(8))
  profile1 = Profile.new()
  cart1 = Cart.new()
  profile1.user_id = user.id
  cart1.user_id = user.id
  profile1.save
  cart1.save
end


puts "#{Product.all.count} products created."
puts "#{User.all.count} users created."
puts "#{Profile.all.count} profiles created."
puts "#{Cart.all.count} carts created."
