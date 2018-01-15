# flight-booker

This is a project for [The Odin Project: Building Advanced Forms](https://www.theodinproject.com/lessons/building-advanced-forms).

## Planning

- Data models
  - Passenger
    - has many Bookings
    - has many Flights through Bookings
  - Flight
    - has many Origins (Airport)
    - has many Destinations (Airport)
    - has many Bookings
    - has many Passengers though Bookings
  - Booking
    - belongs to Passenger
    - belongs to Booking
  - Airport
    - has many ArrivingFlights
    - has many DepartingFlights