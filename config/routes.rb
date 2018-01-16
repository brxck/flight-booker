Rails.application.routes.draw do
  root 'flights#search'
  resources :bookings
end
