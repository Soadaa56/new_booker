require 'faker'

# Create airports
Airport.create!([
  { name: "Atlanta", code: "ATL" },
  { name: "Denver", code: "DEN" },
  { name: "Miami", code: "MIA" },
  { name: "San Francisco", code: "SFO" },
  { name: "Dallas", code: "DFW" }
])

puts "Created #{Airport.count} airports."

20.times do
  departure_airport = Airport.all.sample
  arrival_airport = (Airport.all - [departure_airport]).sample
  departure_time = Faker::Time.forward(days: 30)
  arrival_time = departure_time + rand(2..8).hours


  Flight.create!(
    departure_airport_id: departure_airport.id,
    arrival_airport_id: arrival_airport.id,
    departure_time: departure_time,
    arrival_time: arrival_time
  )
end

puts "Created #{Flight.count} flights."