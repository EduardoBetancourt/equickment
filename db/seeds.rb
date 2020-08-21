require "open-uri"

PackageCategory.destroy_all
Category.destroy_all
Booking.destroy_all
Package.destroy_all

categories = %w(Electronics Furniture Party Garden Beach Tableware)
categories.each do |category|
  Category.create!(name: category)
end

5.times do
  User.create!(email: Faker::Internet.email, password: "password")
end

package1 = Package.create!(name: "Professional DJ Set", address: "Lomas de Polanco, Guadalajara, Jalisco, Mexico", description: "I offer a fully equipped DJ Set with 25 records. Speakers not included. No delivery. Set can be pickup between 11am - 15pm of the first rental day. This offer requires a deposit of $500", price: 450, user: User.all.sample)
package1.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032215/DJ_set_1_1_hv0z8b.jpg'), filename: 'djset11.jpg', content_type: 'image/jpg')
package1.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032216/DJ_set_1_2_tldvgn.jpg'), filename: 'djset12.jpg', content_type: 'image/jpg')

package2 = Package.create!(name: "BBQ Grill Extraordinaire", address: "Avenida Niños Héroes 1555, Guadalajara, Jalisco, Mexico", description: "Super simple yet deluxe BBQ grill, perfect for your events. Package includes: Grill, gas tank, aluminium foil, 10 plates, cutlery. Equipment can be delivered of pick-up, depending on wishes.", price: 67, user: User.all.sample)
package2.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032476/bbq_1_vuixjb.jpg'), filename: 'bbq1.jpg', content_type: 'image/jpg')
package2.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032476/bbq_2_jcjqmv.jpg'), filename: 'bbq2.jpg', content_type: 'image/jpg')
package2.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032476/bbq_3_jelmr4.jpg'), filename: 'bbq3.jpg', content_type: 'image/jpg')

package3 = Package.create!(name: "Funky Neon Lights", address: "Calle Álvaro Obregón 364, Guadalajara, Jalisco, Mexico", description: "Want to pimp out your event? We have the perfect thing for that! We offer 3 different designs: Ice Cream, Cocktails & Dreams and Cactus", price: 40, user: User.all.sample)
package3.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032216/neon_2_k1kpwp.jpg'), filename: 'neon1.jpg', content_type: 'image/jpg')
package3.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032217/neon_3_mznucv.jpg'), filename: 'neon2.jpg', content_type: 'image/jpg')
package3.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032217/neon_1_tjq6is.jpg'), filename: 'neon3.jpg', content_type: 'image/jpg')

package4 = Package.create!(name: "Vintage Popcorn Machine", address: "Calle Dionisio Rodríguez 52, Guadalajara, Jalisco, Mexico", description: "Who doesn't love popcorn!! For your next movie night rent this vintage popcorn machine. Package includes sweet and salty popcorn for 10 people, old school popcorn holders, plus a variety of sauces. Delivery included in price.", price: 50, user: User.all.sample)
package4.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032219/popcorn_1_ght1fy.jpg'), filename: 'popcorn1.jpg', content_type: 'image/jpg')
package4.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/popcorn_2_xzdnmp.jpg'), filename: 'popcorn2.jpg', content_type: 'image/jpg')
package4.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/popcorn_3_w7frgl.jpg'), filename: 'popcorn3.jpg', content_type: 'image/jpg')

package5 = Package.create!(name: "Complete DJ Set", address: "Av Mariano Otero 663, Del Fresno, 44909 Guadalajara, Jal.", description: "This set includes a speaker surround system, a dj controller and party lights. We'll setup everything for you and deliver to your spot!", price: 100, user: User.all.sample)
package5.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032214/DJ_set_2_2_ic9dae.jpg'), filename: 'djset21.jpg', content_type: 'image/jpg')
package5.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032215/DJ_set_2_1_bk20tu.jpg'), filename: 'djset22.jpg', content_type: 'image/jpg')

package6 = Package.create!(name: "Lawn Mower", address: "Zona Hotelera, Las Glorias 48333 Puerto Vallarta, Jal.", description: "Why are gardners always happy? Becuase they mow land, don't skip this opportunity for you to experience true happiness", price: 15, user: User.all.sample)
package6.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032216/land_mower_1_bfsrzg.png'), filename: 'landmower1.jpg', content_type: 'image/png')
package6.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/land_mover_2_xy6fpg.jpg'), filename: 'landmower2.jpg', content_type: 'image/jpg')
package6.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032216/land_mower_3_zg639s.jpg'), filename: 'landmower3.jpg', content_type: 'image/jpg')

package7 = Package.create!(name: "Projector Set", address: "Calle Adrián Puga 2906, Guadalajara, Jalisco, Mexico", description: "All you need for a perfect presentation or even movie night. Offer includes: projector, screen, speakers. For an additional $15 we install everything for you. Delivery and pick-up are free of charge.", price: 120, user: User.all.sample)
package7.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/projector_2_rzg0k3.png'), filename: 'projectorset1.jpg', content_type: 'image/png')
package7.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/projector_1_rqobqd.jpg'), filename: 'projectorset2.jpg', content_type: 'image/jpg')
package7.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032219/projector_3_obyqys.jpg.jpg'), filename: 'projectorset3.jpg', content_type: 'image/jpg')

package8 = Package.create!(name: "Handy Ladder", address: "Calle Puebla 130, Mexico-Stad, Ciudad de México, Mexico", description: "A ladder takes too much space in your house, that's why you can take mine! I'll take it over to your house whenever you need it. I'm also pretty handy, so if you need any fixes in the house I would be happy to help out.", price: 10, user: User.all.sample)
package8.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032214/ladder_1_bpopbr.jpg'), filename: 'ladder1.jpg', content_type: 'image/jpg')
package8.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032217/ladder_2_hghgrh.jpg'), filename: 'ladder2.jpg', content_type: 'image/jpg')

package9 =Package.create!(name: "Cool Surfboards", address: "Tampico", description: "I live on the beach and have multiple surfboards that I don't use all the time. Come to my house to rent one for your day at the beach. There is a choice between 3 different designs", price: 29, user: User.all.sample)
package9.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032219/surf_board_3_haqk3o.jpg'), filename: 'surfboard1.jpg', content_type: 'image/jpg')
package9.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032218/surf_board_1_hir9cu.jpg'), filename: 'surfboard2.jpg', content_type: 'image/jpg')
package9.photos.attach(io: URI.open('https://res.cloudinary.com/deb2zefxf/image/upload/v1598032221/surf_board_2_tdglcn.jpg'), filename: 'surfboard3.jpg', content_type: 'image/jpg')


