# Generate products

Product.destroy_all

product1 = Product.create(name: "chainsaw", price: "199.00", description: "careful")
product2 = Product.create(name: "umbrella", price: "17.00", description: "use me")
product3 = Product.create(name: "spoon", price: "3.50", description: "love you")
product4 = Product.create(name: "corkscrew", price: "5.00", description: "hi!")

puts "#{Product.all.count} products created."
