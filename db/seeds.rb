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
boat10 = Boat.Create(
  name: "Tranquility", 
  price_daily: 80, 
  size: 40.5, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2005,
  # boat_picture: "/"
)
puts "Created #{boat10.name}"

boat9 = Boat.Create(
  name: "Wind", 
  price_daily: 100, 
  size: 49, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2010,
  # boat_picture: "/"
)
puts "Created #{boat9.name}"

boat8 = Boat.Create(
  name: "Moana", 
  price_daily: 150, 
  size: 50, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2016,
  # boat_picture: "/"
)
puts "Created #{boat8.name}"

boat7 = Boat.Create(
  name: "Boaty Boat", 
  price_daily: 70, 
  size: 20, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 1995,
  # boat_picture: "/"
)
puts "Created #{boat7.name}"

boat6 = Boat.Create(
  name: "Bella Anne", 
  price_daily: 200, 
  size: 60, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2008,
  # boat_picture: "/"
)
puts "Created #{boat6.name}"

boat5 = Boat.Create(
  name: "Wave Rider", 
  price_daily: 80, 
  size: 30, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 1970,
  # boat_picture: "/"
)
puts "Created #{boat5.name}"

boat4 = Boat.Create(
  name: "Surfing USA", 
  price_daily: 90, 
  size: 35, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2003,
  # boat_picture: "/"
)
puts "Created #{boat4.name}"

boat3 = Boat.Create(
  name: "Windy Ways", 
  price_daily: 85, 
  size: 38, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2005,
  # boat_picture: "/"
)
puts "Created #{boat3.name}"

boat2 = Boat.Create(
  name: "Dolphins Friend", 
  price_daily: 100, 
  size: 40, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon. Enjoy riding with Dolphins for your trip!",
  production_year: 2006,
  # boat_picture: "/"
)
puts "Created #{boat2.name}"

boat1 = Boat.Create(
  name: "Whale Watcher", 
  price_daily: 70, 
  size: 20, 
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon. Watch whales swimming around and enjoy the majesty",
  production_year: 1995,
  # boat_picture: "/"
)
puts "Created #{boat1.name}"
# rails generate migration AddBoatPictureToBoats boat_pricture:file 