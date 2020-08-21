categories = %w(Electronics Furniture Party Garden Beach Tableware)
categories.each do |category|
  Category.create!(name: category)
end

5.times do
  User.create!(email: Faker::Internet.email, password: "password")
end

Package.create!(name: "Professional DJ Set", address: "Lomas de Polanco, Guadalajara, Jalisco, Mexico", description: "I offer a fully equipped DJ Set with 25 records. Speakers not included. No delivery. Set can be pickup between 11am - 15pm of the first rental day. This offer requires a deposit of $500", price: 450, user: User.all.sample)
Package.create!(name: "BBQ Grill Extraordinaire", address: "Avenida Niños Héroes 1555, Guadalajara, Jalisco, Mexico", description: "Super simple yet deluxe BBQ grill, perfect for your events. Package includes: Grill, gas tank, aluminium foil, 10 plates, cutlery. Equipment can be delivered of pick-up, depending on wishes.", price: 67, user: User.all.sample)
Package.create!(name: "Funky Neon Lights", address: "Calle Álvaro Obregón 364, Guadalajara, Jalisco, Mexico", description: "Want to pimp out your event? We have the perfect thing for that! We offer 3 different designs: Ice Cream, Cocktails & Dreams and Cactus", price: 40, user: User.all.sample)
Package.create!(name: "Vintage Popcorn Machine", address: "Calle Dionisio Rodríguez 52, Guadalajara, Jalisco, Mexico", description: "Who doesn't love popcorn!! For your next movie night rent this vintage popcorn machine. Package includes sweet and salty popcorn for 10 people, old school popcorn holders, plus a variety of sauces. Delivery included in price.", price: 50, user: User.all.sample)
Package.create!(name: "Complete DJ Set", address: "Av Mariano Otero 663, Del Fresno, 44909 Guadalajara, Jal.", description: "This set includes a speaker surround system, a dj controller and party lights. We'll setup everything for you and deliver to your spot!", price: 100, user: User.all.sample)
Package.create!(name: "Lawn Mower", address: "Zona Hotelera, Las Glorias 48333 Puerto Vallarta, Jal.", description: "Why are gardners always happy? Becuase they mow land, don't skip this opportunity for you to experience true happiness", price: 15, user: User.all.sample)
Package.create!(name: "Projector Set", address: "Calle Adrián Puga 2906, Guadalajara, Jalisco, Mexico", description: "All you need for a perfect presentation or even movie night. Offer includes: projector, screen, speakers. For an additional $15 we install everything for you. Delivery and pick-up are free of charge.", price: 120, user: User.all.sample)
Package.create!(name: "Handy Ladder", address: "Calle Puebla 130, Mexico-Stad, Ciudad de México, Mexico", description: "A ladder takes too much space in your house, that's why you can take mine! I'll take it over to your house whenever you need it. I'm also pretty handy, so if you need any fixes in the house I would be happy to help out.", price: 10, user: User.all.sample)
Package.create!(name: "Cool Surfboards", address: "Tampico", description: "I live on the beach and have multiple surfboards that I don't use all the time. Come to my house to rent one for your day at the beach. There is a choice between 3 different designs", price: 29, user: User.all.sample)


