# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.find_or_create_by(name: 'Copenhagen Airport', code: 'CPH', country: 'Denmark' )
Airport.find_or_create_by(name: 'Munich Airport', code: 'MUC', country: 'Germany' )
Airport.find_or_create_by(name: 'Lisbon Airport', code: 'LIS', country: 'Portugal' )
Airport.find_or_create_by(name: 'Ibiza Airport', code: 'IBZ', country: 'Spain' )
Airport.find_or_create_by(name: 'Paris Charles de Gaulle', code: 'CDG', country: 'France' )
