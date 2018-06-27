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
restaurants_attributes = [
  {
    name:         'MiScusi',
    address:      'Corso Magenta, 52, Milan',
    phone_number: Faker::PhoneNumber.phone_number,
    category:      'belgian'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: Faker::PhoneNumber.phone_number,
    category:      'chinese'
  },
  {
    name:         'Tramezzini Palace',
    address:      'Bananrama Road, Milano',
    phone_number: Faker::PhoneNumber.phone_number,
    category:      'italian'
  },
  {
    name:         'Bar Atlantic',
    address:      'Esselunga, Milano',
    phone_number: Faker::PhoneNumber.phone_number,
    category:      'japanese'
  },
  {
    name:         'Rookies Bar',
    address:      'Navigli Corner, Milano',
    phone_number: Faker::PhoneNumber.phone_number,
    category:        'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
