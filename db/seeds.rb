# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  { name: 'Le Chat noir', address: 'rue du Rouet', category: 'french', phone_number: '0491756565' },
  { name: 'La Trattoria', address: 'Bd de la république', category: 'italian', phone_number: '0492859944' },
  { name: 'Ramen', address: 'Lyon', category: 'japanese', phone_number: '0599004422' },
  { name: 'Chez Wang', address: 'Paris', category: 'chinese', phone_number: '0175652233' },
  { name: 'La frite', address: 'Bruxelle', category: 'belgian', phone_number: '0345678900' }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
