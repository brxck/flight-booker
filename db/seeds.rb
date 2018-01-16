# This would be bad in a production website...
Airport.delete_all
Flight.delete_all

# 12 busieset US Airports
Airport.create(code: 'ATL')
Airport.create(code: 'LAX')
Airport.create(code: 'ORD')
Airport.create(code: 'DFW')
Airport.create(code: 'JFK')
Airport.create(code: 'DEN')
Airport.create(code: 'SFO')
Airport.create(code: 'LAS')
Airport.create(code: 'CLT')
Airport.create(code: 'SEA')
Airport.create(code: 'PHX')
Airport.create(code: 'MIA')

# Flights
50.times do
  origin = Airport.all.sample.id
  destination = Airport.all.sample.id
  next if origin == destination
  Flight.create(origin_id: origin,
                destination_id: destination,
                duration: rand(360))
end
