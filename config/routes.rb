Rails.application.routes.draw do
  resources :gallery_reviews
  resources :reviews
  resources :galleries
  resources :bookings 
  resources :admins 
  resources :sessions
  resources :users, except: [:destroy]
  
  # post "/login", to: "sessions#create"
  # delete "/logout", to: "sessions#destroy"
  # get "/me", to: "users#show"

  post '/signup', to: 'users#create'
  get '/me', to: 'users#show'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/recipes', to: 'recipes#index'
  post '/recipes', to: 'recipes#create'

  # get '/gallery/:gallery_id/reviews', to: 'gallery#reviews_index'
  # get '/gallery/:gallery_id/reviews/:id', to: 'gallery#review'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
