# flight-booker

This is a project for [The Odin Project: Building Advanced Forms](https://www.theodinproject.com/lessons/building-advanced-forms).

# Port-project

With this project I had the chance to explore nested forms in Rails and more form helpers.

I decided to try using Slim in my views, which went really well. I like Slim much better than erb, and it's faster and more aesthetic than Haml. I'm planning on using it in my future Rails work.

I also tried using Bulma as a front-end framework. Since the back-end on this project was fairly straightforward, I didn't want to spend to much time trying to style it. I haven't even gotten to the HTML/CSS part of The Odin Project, so when I do try and make things look nice, it's mostly just trial and error.

The project came out looking pretty nice-looking using Bulma and some minor effort. Thankfully it doesn't look like another Bootstrap site. I especially like Bulma because it's pretty simple, just one Sass file. I don't want these frameworks to keep me from learning, but I think that they do the job well for now. 

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