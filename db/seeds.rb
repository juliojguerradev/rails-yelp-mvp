# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'japanese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
chineese_downtown = { name: 'China House', address: 'Newcastle 11th Street', category: 'chinese' }
french_taste = { name: 'French Taste', address: '8 Douglas St, Manchester', category: 'french' }
belgium_side = { name: 'Belgium Side', address: 'Arlington 9th Avenue', category: 'belgian' }

[dishoom, pizza_east, chineese_downtown, french_taste, belgium_side].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
