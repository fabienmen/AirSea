# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

puts "Cleaning database..."
Boat.destroy_all
User.destroy_all

user1 = User.create(email: "airsea@airsea.com", password: "airsea")

puts "Creating Boats..."
boat10 = Boat.create(
  name: "Tranquility",
  price_daily: 80,
  size: 40.5,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2005,
  category: "Yacht",
  user: user1
  # boat_picture: "/"
)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
Boat.last.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
puts "Created #{boat10.name}"

boat9 = Boat.create(
  name: "Wind",
  price_daily: 100,
  size: 49,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2010,
  category: "Catamaran",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Catamaran.jpeg'), filename:'Catamaran.jpeg')
puts "Created #{boat9.name}"

boat8 = Boat.create(
  name: "Moana",
  price_daily: 150,
  size: 50,
  description: "A beautiful fishing boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2016,
  category: "Fishing Boat",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Fishing Boat.jpeg'), filename:'Fishing Boat.jpeg')
puts "Created #{boat8.name}"

boat7 = Boat.create(
  name: "Boaty Boat",
  price_daily: 70,
  size: 20,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 1995,
  category: "Sailing Boat",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/sailboat.jpeg'), filename:'sailboat.jpeg')
puts "Created #{boat7.name}"

boat6 = Boat.create(
  name: "Bella Anne",
  price_daily: 200,
  size: 60,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2008,
  category: "Speedboat",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Speedboat.jpeg'), filename:'Speedboat.jpeg')
puts "Created #{boat6.name}"

boat5 = Boat.create(
  name: "Wave Rider",
  price_daily: 80,
  size: 10,
  description: "A beautiful Jetski that will carry your dreams with the sunset on the horizon.",
  production_year: 1970,
  category: "Jetski",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Jetski.jpeg'), filename:'Jetski.jpeg')
puts "Created #{boat5.name}"

boat4 = Boat.create(
  name: "Gone Fishing",
  price_daily: 90,
  size: 35,
  description: "A beautiful fishing boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2003,
  category: "Fishing Boat",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/fishing.png'), filename:'fishing.png')
puts "Created #{boat4.name}"

boat3 = Boat.create(
  name: "Windy Ways",
  price_daily: 85,
  size: 38,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon.",
  production_year: 2005,
  category: "Yacht",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Yacht.jpeg'), filename:'Yacht.jpeg')
puts "Created #{boat3.name}"

boat2 = Boat.create(
  name: "Dolphins Friend",
  price_daily: 100,
  size: 40,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon. Enjoy riding with Dolphins for your trip!",
  production_year: 2006,
  category: "Catamaran",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Catamaran.jpeg'), filename:'Catamaran.jpeg')
puts "Created #{boat2.name}"

boat1 = Boat.create(
  name: "Whale Watcher",
  price_daily: 70,
  size: 20,
  description: "A beautiful sail boat that will carry your dreams with the sunset on the horizon. Watch whales swimming around and enjoy the majesty",
  production_year: 1995,
  category: "Speedboat",
  user: user1
  # boat_picture: "/"
)
Boat.last.photo.attach(io: File.open('app/assets/images/Speedboat.jpeg'), filename:'Speedboat.jpeg')
puts "Created #{boat1.name}"
# rails generate migration AddBoatPictureToBoats boat_pricture:file
