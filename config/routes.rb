Rails.application.routes.draw do
  devise_for :users
  resources :categories, only: [:index, :show]

  get '/users/:id' => 'users#show', :as => :users_show
  get '/users/:id/become_host' => 'users#become_host', :as => :become_host
  get '/users/:id/add_expertise' => 'users#add_expertise', :as => :add_expertise
  post '/users/post_expertise' => 'users#post_expertise', :as => :post_expertise
  get '/bookings/request_booking' => 'bookings#request_booking', :as => :request_booking
  post '/bookings/post_booking' => 'bookings#post_booking', :as => :post_booking
  root to: "home#index"
end
