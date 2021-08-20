require 'faker'
require "open-uri"

puts "creating users"
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
  https://images.stockx.com/images/adidas-Yeezy-450-Dark-Slate-Product.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1626801847&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500
  https://images.stockx.com/images/Air-Jordan-14-Retro-Aleali-May-W-Ver2.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1628639453&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500
  https://images.stockx.com/360/adidas-Yeezy-Boost-700-MNVN-Blue-Tint/Images/adidas-Yeezy-Boost-700-MNVN-Blue-Tint/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1626289128&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/images/nike-sb-dunk-low-barcelona.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1626158008&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500
  https://images.stockx.com/images/Nike-Dunk-SB-Low-Shrimp.jpg?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1608510815&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500
  https://images.stockx.com/360/Nike-Dunk-SB-Low-Concepts-Grail/Images/Nike-Dunk-SB-Low-Concepts-Grail/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607647784&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-SB-Dunk-Low-Broncos/Images/Nike-SB-Dunk-Low-Broncos/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1624633731&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-Low-Nontourage/Images/Nike-Dunk-SB-Low-Nontourage/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607052832&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/images/Nike-SB-Dunk-Low-Strummer.png?fit=clip&bg=FFFFFF&auto=compress&dpr=2&trim=color&updated_at=1625852297&fm=webp&ixlib=react-9.1.5&q=90&w=400&h=500
  https://images.stockx.com/360/Nike-SB-Dunk-Low-Bic/Images/Nike-SB-Dunk-Low-Bic/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1608512122&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-Low-Oompa-Loompa/Images/Nike-Dunk-SB-Low-Oompa-Loompa/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607053319&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-High-Huxtable/Images/Nike-Dunk-SB-High-Huxtable/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607047838&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-SB-Dunk-High-Bota/Images/Nike-SB-Dunk-High-Bota/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607060249&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-High-Quagmire/Images/Nike-Dunk-SB-High-Quagmire/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607054461&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-SB-Dunk-High-Humidity/Images/Nike-SB-Dunk-High-Humidity/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607058513&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-High-HUF/Images/Nike-Dunk-SB-High-HUF/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1608514131&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-SB-Dunk-High-Marge-Simpson/Images/Nike-SB-Dunk-High-Marge-Simpson/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1624633452&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
  https://images.stockx.com/360/Nike-Dunk-SB-High-Concepts-Stained-Glass/Images/Nike-Dunk-SB-High-Concepts-Stained-Glass/Lv2/img01.jpg?auto=compress&dpr=2&updated_at=1607055048&fit=clip&fm=webp&ixlib=react-9.1.5&q=90&w=400
]

15.times do
  puts "creating shoe"
  file = URI.open(stockx_photos.sample)
  file2 = URI.open(stockx_photos.sample)
  file3 = URI.open(stockx_photos.sample)
  shoe = Shoe.create(
    model: "Nike #{Faker::JapaneseMedia::DragonBall.character}",
    price: rand(2..23),
    size: [36.0, 36.5, 37.5, 38.0, 38.5, 39.0, 40.0, 40.5, 41.0, 42.0, 42.5, 43.0, 44.0, 44.5, 45.0, 45.5, 46.0, 47.0, 47.5, 48.0].sample,
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    user_id: User.all.sample.id
  )
  shoe.images.attach(io: file, filename: 'image1', content_type: 'image/png')
  shoe.images.attach(io: file2, filename: 'image2', content_type: 'image/png')
  shoe.images.attach(io: file3, filename: 'image3', content_type: 'image/png')
end
