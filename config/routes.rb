Rails.application.routes.draw do
  resources :gallery_reviews
  resources :reviews
  resources :galleries
  resources :bookings 
  resources :admins 
  resources :sessions
  resources :users
  resources :admin_sessions
  

# sessions is setups for the sessionsController
  get "/user_me", to: "sessions#show"
  post "/user_login", to: "sessions#create"
  delete "/user_logout", to: "sessions#destroy"
  post '/user_signup', to: 'users#create'

#ADMINS SESSION DATA
  get "/admin_me", to: "admin_sessions#show"
  post "/admin_login", to: "admin_sessions#create"
  delete "/admin_logout", to: "admin_sessions#destroy"
  post '/admin_signup', to: 'admins#create'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "application#cookie"
end
