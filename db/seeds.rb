# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Adding Restaurants!'

10.times do |i|
  restaurant = Restaurant.new(name: Faker::Restaurant.name)
  restaurant.address = Faker::Address.street_address
  restaurant.category = %w[chinese italian japanese french belgian].sample
  review = Review.new(rating: rand(1..5), content: Faker::Restaurant.review)
  review.restaurant = restaurant
  restaurant.save
  review.save
  p "Generated #{i + 1} Restaurant!"
end

p 'Done Generating!'
