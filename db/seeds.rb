require 'faker'
require "open-uri"

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1626782776/qxjbfihftnyi9phgnb3l.jpg')
user = User.new(first_name: 'Marina',
        last_name: "Miranda",
        email: 'marina@obuvnb.com',
        password: '123456',
        password_confirmation: '123456',
        description: 'My name is Marina, I am 25 years old, native brazilian who moved to Germany at a young age. I studied fashion design until 2020, but dropped it with an immense urge to search for a branch that would suit me better. After a long self-discovery phase (that actually never ends) I now found the courage to jump into the programming-world, since I’ve always been interested in IT.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1626805000/yppphiokhswqo7b4ar1b.jpg')
user = User.new(first_name: 'Valentin',
        last_name: "Hobusch",
        email: 'valentin@obuvnb.com',
        password: '123456',
        password_confirmation: '123456',
        description: 'Studied Computer science at TU Berlin for a few semesters: Too much science, not enough computers. Looking to find a job in Web Development after Le Wagon.')
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1625037044/xyvhwprahklgd6nke6rd.jpg')
user = User.new(first_name: 'Stanislaw',
        last_name: "Novikow",
        email: 'stan@obuvnb.com',
        password: '123456',
        password_confirmation: '123456',
        description: "I already have some basic knowledge in Webdev. I'm glad to join this course to extend my existing skills and to get new ones. I'm looking forward to any new challenges!.")
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1627363623/dxcvc5uqkimpnpkhgswe.jpg')
user = User.new(first_name: 'Ruy',
        last_name: "Schneider",
        email: 'ruy@obuvnb.com',
        password: '123456',
        password_confirmation: '123456',
        description: "Studied Philosophy, used to work in Bars. I'm interested in how thinking works, and believe that coding will enrich my perspective around it. One day I want to code my own chess AI.")
user.profile_picture.attach(io: file, filename: 'profile_picture.png', content_type: 'image/png')
user.save!

file = URI.open('https://images.stockx.com/images/air-jordan-1-retro-high-og-pollen-ps.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1627894897&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500')
  shoe = Shoe.create(
    model: "Nike Jordan Retro High Pollen",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: 'In a simple two-tone format, the upper of the Air Jordan 1 High Pollen is constructed of black tumbled leather with Pollen Yellow overlays and Swooshes. Matching woven tongue tags and a Jordan Wings logo on the collar add authentic 1980s detailing. The Air Jordan 1 High Pollen released in August of 2021 and retailed for $170.',
    user_id: User.all.sample.id
  )
shoe.image1.attach(io: file, filename: 'image1', content_type: 'image/png')

file = URI.open('https://images.stockx.com/360/Nike-Dunk-Low-SE-Multi-Camo/Images/Nike-Dunk-Low-SE-Multi-Camo/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1629140563&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400')
  shoe = Shoe.create(
    model: "Nike Dunk Low SE Sail Multi-Camo",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: 'Boasting clashing camouflage patterns, the Nike Dunk Low Sail Multi-Camo is a statement piece. The design utilizes a white leather base to prominently display its multi-color camo overlays, which feature five different styles of camo. Green Swooshes and vibrant orange Nike embroidery on the heel tabs add the finishing touches. The Nike Dunk Low Sail Multi-Camo released in August of 2021 and retailed for $110. The Air Jordan 1 High Pollen released in August of 2021 and retailed for $170.',
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
