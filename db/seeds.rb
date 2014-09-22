require 'faker'

#create lists

10.times do 
  List.create!(
    name:  Faker::Lorem.sentence
    )
end

lists = List.all

puts "Seed finished"
puts "#{List.count} lists created"
