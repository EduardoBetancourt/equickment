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

Package.create!(name: "Movie Night" , description: "We'll bring popcorn, a projector and will get you wet in splashy scenes", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Barbecue Evening" , description: "No grill, no problem. We'll even set up the charcoal for you", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Dinner for two" , description: "Have a romantic dinner for that special someone without setting a foot outside", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Nintendo Switch" , description: "Are you still good at Mario Kart? Enjoy the nintendo wihtout having to buy one", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Take My Puppy For a Walk" , description: "Are you alone this quarantine and want some company? Don't worry, you can take my puppy for a walk", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "LawnMower" , description: "Why are gardners alawys happy? Becuase they mow land, don't skip this opportunity for you to experience true happiness", price: rand(0..1000), user: User.all.sample)
Package.create!(name: "Bad Bunny for a Night" , description: "I'll dress as BadBunny, setup a professional concert and sing to you", price: rand(0..1000), user: User.all.sample)





