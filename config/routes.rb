Rails.application.routes.draw do
  # root path
  root 'events#show_all_events'
  
  # event routing
  get '/events/new', to: 'events#new_event', as: :new_event
  get '/events', to: 'events#show_all_events', as: :show_all_events
  get '/events/:id', to: 'events#show_event', as: :show_event
  get '/events/:id/edit', to: 'events#edit_event', as: :edit_event
  delete '/events/:id', to: 'events#delete_event', as: :delete_event
  
  # location routing
  get '/locations/new', to: 'locations#new_location', as: :new_location
  get '/locations', to: 'locations#show_all_locations', as: :show_all_locations
  get '/locations/:id', to: 'locations#show_location', as: :show_location
  get '/locations/:id/edit', to: 'locations#edit_location', as: :edit_location
  delete '/locations/:id', to: 'locations#delete_location', as: :delete_location
  
  # user routing
  get '/users/new', to: 'users#new_user', as: :new_user
  get '/users', to: 'users#show_all_users', as: :show_all_users
  get '/users/:id', to: 'users#show_user', as: :show_user
  get '/users/:id/edit', to: 'users#edit_user', as: :edit_user
  delete '/users/:id', to: 'users#delete_user', as: :delete_user
end