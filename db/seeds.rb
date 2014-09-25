require 'faker'

#create users

5.times do 
  user = User.new(
    name:      Faker::Name.name,
    email:     Faker::Internet.email,
    password:  Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end
users = User.all 

#create lists

10.times do 
  List.create!(
    name:  Faker::Lorem.sentence
    )
end

lists = List.all

User.first.update_attributes!(
  email: 'mckay74@gmail.com',
  password: 'helloworld',
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
