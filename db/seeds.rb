# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Event.create([
   { title: "Summer Music Festival", description: "A great outdoor music experience.", location: "Central Park", event_type: "Music", start_date: DateTime.new(2023, 6, 15, 17, 0, 0), end_date: DateTime.new(2023, 6, 16, 23, 0, 0) },
   { title: "Local Art Exhibition", description: "Showcasing local artists and their work.", location: "Downtown Gallery", event_type: "Art", start_date: DateTime.new(2023, 7, 1, 10, 0, 0), end_date: DateTime.new(2023, 7, 3, 20, 0, 0) },
   { title: "Tech Conference 2023", description: "The latest in tech and innovation.", location: "Tech Valley Center", event_type: "Conference", start_date: DateTime.new(2023, 7, 20, 9, 0, 0), end_date: DateTime.new(2023, 7, 22, 17, 0, 0) },
   { title: "Culinary Workshop", description: "Hands-on cooking workshop with renowned chefs.", location: "City Culinary School", event_type: "Workshop", start_date: DateTime.new(2023, 8, 10, 12, 0, 0), end_date: DateTime.new(2023, 8, 10, 15, 0, 0) },
   { title: "Charity Run", description: "5K run for a good cause.", location: "Riverbank Park", event_type: "Sports", start_date: DateTime.new(2023, 9, 5, 8, 0, 0), end_date: DateTime.new(2023, 9, 5, 11, 0, 0) },
   { title: "Autumn Book Fair", description: "Discover new authors and classic books.", location: "Old Town Hall", event_type: "Fair", start_date: DateTime.new(2023, 10, 15, 9, 0, 0), end_date: DateTime.new(2023, 10, 17, 19, 0, 0) },
   { title: "Indie Film Festival", description: "Screenings of independent films from around the world.", location: "Sunset Theater", event_type: "Film", start_date: DateTime.new(2023, 11, 20, 14, 0, 0), end_date: DateTime.new(2023, 11, 22, 22, 0, 0) },
   { title: "Holiday Crafts Market", description: "Handmade crafts and holiday gifts.", location: "Community Center", event_type: "Market", start_date: DateTime.new(2023, 12, 10, 10, 0, 0), end_date: DateTime.new(2023, 12, 12, 18, 0, 0) },
   { title: "New Year's Eve Gala", description: "Celebrate the new year in style.", location: "Grand Hotel Ballroom", event_type: "Party", start_date: DateTime.new(2023, 12, 31, 20, 0, 0), end_date: DateTime.new(2024, 1, 1, 2, 0, 0) },
   { title: "Spring Gardening Expo", description: "Everything for your gardening needs.", location: "City Expo Center", event_type: "Expo", start_date: DateTime.new(2024, 4, 5, 9, 0, 0), end_date: DateTime.new(2024, 4, 7, 17, 0, 0) }
 ])

puts "Events seeded successfully!"