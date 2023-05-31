# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Boat.destroy_all



puts "Creating Boats..."
10.times do ||
boat10 = Boat.Create(
  name: "Tranquility", 
  price_daily: 80, 
  size: 40.5, 
  descrpition: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2005,
  # boat_picture: "/"
)
puts "Created #{boat10.name}"