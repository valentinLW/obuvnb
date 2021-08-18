require 'faker'
require "open-uri"

file = URI.open('https://images.unsplash.com/photo-1560858001-2a568c6ea1d7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
user = User.new(first_name: 'NES',
        last_name: "Madagascar",
        email: 'nes@madagascar.com',
        password: '123456',
        password_confirmation: '123456',
        description: 'Lovin shoes since 1979.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.stockx.com/images/Air-Jordan-1-Low-fragment-design-x-Travis-Scott.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1626978285&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500')
user = User.new(first_name: 'Jordan',
        last_name: "Michael",
        email: 'michaeljordan@jordan.com',
        password: '123456',
        password_confirmation: '123456',
        description: 'Basketball bitches.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://thispersondoesnotexist.com/image')
user = User.new(first_name: 'a',
        last_name: "a",
        email: 'a@a.a',
        password: '123456',
        password_confirmation: '123456',
        description: 'Admin Bitches.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.unsplash.com/photo-1482424917728-d82d29662023?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=862&q=80')
user = User.new(first_name: 'Jesus',
        last_name: "Fuckin Christ",
        email: 'jesus@christmas.com',
        password: '123456',
        password_confirmation: '123456',
        description: 'Never wore shoes.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.stockx.com/images/air-jordan-1-retro-high-og-pollen-ps.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1627894897&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500')
  shoe = Shoe.create(
    model: "Nike Jordan Retro High Pollen",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: 'In a simple two-tone format, the upper of the Air Jordan 1 High Pollen is constructed of black tumbled leather with Pollen Yellow overlays and Swooshes. Matching woven tongue tags and a Jordan Wings logo on the collar add authentic 1980s detailing.

The Air Jordan 1 High Pollen released in August of 2021 and retailed for $170.',
    user_id: User.all.sample.id
  )
shoe.image1.attach(io: file, filename: 'image1', content_type: 'image/png')

file = URI.open('https://images.stockx.com/360/Nike-Dunk-Low-SE-Multi-Camo/Images/Nike-Dunk-Low-SE-Multi-Camo/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1629140563&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400')
  shoe = Shoe.create(
    model: "Nike Dunk Low SE Sail Multi-Camo",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: 'Boasting clashing camouflage patterns, the Nike Dunk Low Sail Multi-Camo is a statement piece. The design utilizes a white leather base to prominently display its multi-color camo overlays, which feature five different styles of camo. Green Swooshes and vibrant orange Nike embroidery on the heel tabs add the finishing touches.

The Nike Dunk Low Sail Multi-Camo released in August of 2021 and retailed for $110..

The Air Jordan 1 High Pollen released in August of 2021 and retailed for $170.',
    user_id: User.all.sample.id
  )
shoe.image1.attach(io: file, filename: 'image1', content_type: 'image/png')


12.times do
stockx_photos = %w[
https://images.stockx.com/360/Air-Jordan-1-Retro-High-Electro-Orange/Images/Air-Jordan-1-Retro-High-Electro-Orange/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1626802469&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/360/adidas-Yeezy-Foam-RNNR-MX-Cream-Clay/Images/adidas-Yeezy-Foam-RNNR-MX-Cream-Clay/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1628003512&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/360/Nike-Dunk-Low-Green-Glow-W/Images/Nike-Dunk-Low-Green-Glow-W/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1619204705&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/images/Nike-Dunk-Low-Sunset-Pulse-W.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1619834860&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500
https://images.stockx.com/360/Nike-Dunk-High-AMBUSH-Flash-Lime/Images/Nike-Dunk-High-AMBUSH-Flash-Lime/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1628006304&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/images/Air-Jordan-1-Low-Crimson-Tint-Product.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1620058812&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500
https://images.stockx.com/360/Air-Jordan-1-Retro-High-Bio-Hack/Images/Air-Jordan-1-Retro-High-Bio-Hack/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1606318464&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/360/Nike-SB-Dunk-Low-Ben-Jerrys-Chunky-Dunky/Images/Nike-SB-Dunk-Low-Ben-Jerrys-Chunky-Dunky/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607043246&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=1140
https://images.stockx.com/images/Air-Jordan-1-High-Zoom-CMFT-Lemon-Twist-W.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1622155206&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500
https://images.stockx.com/images/Air-Jordan-6-Retro-Travis-Scott-British-Khaki-TD-Ver2.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1621999290&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500
https://images.stockx.com/images/adidas-Harden-Vol-5-Solar-Yellow.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1616168708&fm=webp&ixlib=react-9.1.5&q=90&w=1140&h=500
]
file = URI.open(stockx_photos.sample)
  shoe = Shoe.create(
    model: "Nike #{Faker::JapaneseMedia::DragonBall.character}",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    user_id: User.all.sample.id
  )
shoe.image1.attach(io: file, filename: 'image1', content_type: 'image/png')

end
