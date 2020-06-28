# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Airport model
Airport.destroy_all
air1 = Airport.find_or_create_by(name: 'Copenhagen Airport', code: 'CPH', country: 'Denmark' )
air2 = Airport.find_or_create_by(name: 'Munich Airport', code: 'MUC', country: 'Germany' )
air3 = Airport.find_or_create_by(name: 'Lisbon Airport', code: 'LIS', country: 'Portugal' )
air4 = Airport.find_or_create_by(name: 'Ibiza Airport', code: 'IBZ', country: 'Spain' )
air5 = Airport.find_or_create_by(name: 'Paris Charles de Gaulle', code: 'CDG', country: 'France' )

# Flight Model
Flight.destroy_all
month = rand(1..12)
day = rand(1..28)
date = DateTime.new(2020, month, day, 12, 30, 0)
Flight.create!(start_airport_id: air1.id, finish_airport_id: air2.id, start_time: date, duration: "2 hrs" )
Flight.create!(start_airport_id: air3.id, finish_airport_id: air4.id, start_time: date, duration: "1.5 hrs" )
Flight.create!(start_airport_id: air2.id, finish_airport_id: air5.id, start_time: date, duration: "3 hrs" )
Flight.create!(start_airport_id: air4.id, finish_airport_id: air1.id, start_time: date, duration: "1.4 hrs" )
Flight.create!(start_airport_id: air1.id, finish_airport_id: air2.id, start_time: date, duration: "1 hr" )
