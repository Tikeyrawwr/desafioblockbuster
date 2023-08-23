# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

puts "Generating clients..."

10.times do
  client = Client.create(
    name: Faker::Name.name,
    age: rand(18..60)
  )
  puts "Client created: #{client.name}"
end

puts "Generating movies..."

20.times do
  movie = Movie.create(
    name: Faker::Movie.title,
    client: Client.order("RANDOM()").first
  )
  puts "Movie created: #{movie.name} (Client: #{movie.client.name})"
end
