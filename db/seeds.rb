require 'faker'

# create users
10.times do
  name = Faker::Name.name
  email = Faker::Internet.email
  password = Faker::Number.number(10)
  User.create!(name: name, email: email, password: password )
end

users = User.all

# my logins

alex1 = User.create!(name: 'Alex1', email: 'alexpritchard45@gmail.com', password: 'helloworld')
alex2 = User.create!(name: 'Alex2', email: 'zander.pritchard@gmail.com', password: 'helloworld')

# create items
40.times do
    name = Faker::Coffee.blend_name
    user = users.sample
    Item.create!(name: name, user: user)
end

puts "#{User.count} users were created"
puts "#{Item.count} tasks were created"
