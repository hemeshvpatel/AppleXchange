Rails.application.routes.draw do
  #get '/listings/:id/new_comment', to: 'comments#new'
  #post '/listings/:id', to: 'comments#create'
  get '/reviews/new', to: 'reviews#new'
  post '/products/:id', to: 'reviews#create'
  get '/listings/new_phone', to: 'listings#new_phone', as: 'newphone'
  get '/listings/new_laptop', to: 'listings#new_laptop', as: 'newlaptop'
  resources :listings, only: [:create, :show] do 
    resources :comments
  end
  resources :products, only: [:show]
  get '/', to: 'products#index', as: 'home'
  resources :users, only: [:new, :create, :show]
  
  #sessions routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
