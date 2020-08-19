# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  User.create!(email: Faker::Internet.email, password: "password")
end

Package.create!(name: "Movie Night", address: "Simón Bolívar 320, Ciudad de México, CDMX", description: "We'll bring popcorn, a projector and will get you wet in splashy scenes", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Barbecue Evening", address: "Calle de Venustiano Carranza 49, Ciudad de México, CDMX", description: "No grill, no problem. We'll even set up the charcoal for you", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Dinner for two", address: "Hidalgo 184, Centro, Santiago de Querétaro, Qro.", description: "Have a romantic dinner for that special someone without setting a foot outside", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Nintendo Switch", address: "Calle Ezequiel Montes 55, Santiago de Querétaro, Qro.", description: "Are you still good at Mario Kart? Enjoy the nintendo wihtout having to buy one", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Take My Puppy For a Walk", address: "Calle 51 Este, Panamá, Panama", description: "Are you alone this quarantine and want some company? Don't worry, you can take my puppy for a walk", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "LawnMower", address: "Calle 72 Este, Panamá, Panama", description: "Why are gardners alawys happy? Becuase they mow land, don't skip this opportunity for you to experience true happiness", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Bad Bunny for a Night", address: "Tokio 824, Portales Sur, Benito Juárez, 03300 Ciudad de México, CDMX", description: "I'll dress as BadBunny, setup a professional concert and sing to you", price: rand(0..1000), user: User.all.sample)




