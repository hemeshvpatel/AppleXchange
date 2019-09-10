Rails.application.routes.draw do
  resources :exchanges, only: [:show, :create]
  #post '/listings/:id', to: 'comments#create'
  #post '/products/:id', to: 'reviews#create'
  get '/listings/new_phone', to: 'listings#new_phone', as: 'newphone'
  get '/listings/new_laptop', to: 'listings#new_laptop', as: 'newlaptop'
  resources :listings, only: [:create, :show]
  resources :products, only: [:show]
  get '/', to: 'products#index', as: 'home'
  resources :users, only: [:new, :create, :show]
  
  #sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
