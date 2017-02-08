# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  Item.create({
    name: Faker::StarWars.character,
    description: Faker::StarWars.quote,
    image: Faker::LoremPixel.image,
    quantity: 100,
    price: Faker::Commerce.price,
    category_id: rand(1..6)
  })
end

User.create({
  username: "admin",
  email: "admin@gmail.com",
  password: "secret",
  admin: true
})

User.create({
  username: "benj",
  email: "benj@gmail.com",
  password: "1234",
  admin: true
})

User.create({
  username: "mochi",
  email: "mochi@gmail.com",
  password: "1234"
})

Item.create({
  name: "Hiking Shoes",
  description: "Going out on a hike?  Take these!  Waterproof, sturdy, AND comfy!",
  image: "https://www.rei.com/media/51e99672-0a61-4a37-835c-a6aa46da7eb8", 
  quantity: 20,
  price: 100
})

Category.create({
  name: "Movies"
})

Category.create({
  name: "Shoes"
})