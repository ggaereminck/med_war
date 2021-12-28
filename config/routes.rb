Rails.application.routes.draw do
  
  resources :levels
  resources :store_resources
  resources :store_units
  resources :store_buildings
  resources :stores
  resources :units
  resources :armies
  resources :building_resources
  resources :buildings
  resources :resources
  resources :kingdoms
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
