Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :categories, only: [:index, :show]

  get '/users/:id' => 'users#show', :as => :users_show
  get '/users/:id/become_host' => 'users#become_host', :as => :become_host
  get '/users/:id/add_expertise' => 'users#add_expertise', :as => :add_expertise
  post '/users/post_expertise' => 'users#post_expertise', :as => :post_expertise



  get '/bookings/request_booking' => 'bookings#request_booking', :as => :request_booking
  post '/bookings/post_booking' => 'bookings#post_booking', :as => :post_booking
  get '/bookings/edit_booking' => 'bookings#edit_booking', :as => :edit_booking
  put '/bookings/update_booking' => 'bookings#update_booking', :as => :update_booking
  delete '/bookings/:id' => 'bookings#cancel', :as => :cancel_booking


  get '/reviews/new' => 'reviews#new', :as => :create_review
  post '/reviews/create' => 'reviews#create', :as => :review
  get '/reviews/edit' => 'reviews#edit', :as => :edit_review
  put '/reviews/update' => 'reviews#update', :as => :update_review

  # get '/reviews/:id' => 'reviews#show', as: 'review'

  post '/categories' => 'categories#index'

  root to: "home#index"
end
