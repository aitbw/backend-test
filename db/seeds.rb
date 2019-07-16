# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

events = Event.create([
  {
    title: 'Electronic Circus',
    location: 'Berlin, Germany',
    description: 'A party full of glitter, confetti, and beats.',
    event_date: Date.today,
    price: 20.00,
    event_time: Time.now
  },

  {
    title: 'Housewerk',
    location: 'Budapest, Hungary',
    description: "They know what house is... But they don't know what is house. Everybody shout.",
    event_date: Date.yesterday,
    price: 25.00,
    event_time: Time.now
  },

  {
    title: 'Lowkey Tech',
    location: 'Prague, Czech Republic',
    description: 'Chill techno and tech house.',
    event_date: 2.days.ago,
    price: 18.99,
    event_time: Time.now
  }
])

events.map { |e| e.save! }
