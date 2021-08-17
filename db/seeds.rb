require 'faker'

brand = %w[nike adidas reebok dr.martens puma]

50.times do
  user = User.create(
    email: Faker::Internet.email,
    password: '#$taawktljasktlw4aaglj',
    password_confirmation: '#$taawktljasktlw4aaglj'
  )
end

3.times do
  Shoe.create(
    model: "#{brand.sample.capitalize} #{Faker::JapaneseMedia::DragonBall.character}",
    price: rand(23..999),
    size: rand(19..49),
    address: "#{Faker::Address.street_address} #{Faker::Address.city}",
    description: Faker::Restaurant.description,
    user_id: User.all.sample.id
  )
end
