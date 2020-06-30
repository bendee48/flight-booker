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
air6 = Airport.find_or_create_by(name: 'London Heathrow', code: 'LHR', country: 'UK' )

# Flight Model
Flight.destroy_all

airports = [air1, air2, air3, air4, air5, air6]

150.times do
  Flight.create! do |f|
    start, finish = airports.sample(2)
    f.start_airport_id = start.id
    f.finish_airport_id = finish.id
    f.start_time = rand(1.0..7.0).days.from_now
    f.duration = "#{rand(1..4)} hrs"
  end
end

