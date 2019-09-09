Rails.application.routes.draw do
  post '/listings/:id', to: 'comments#create'
  post '/products/:id', to: 'reviews#create'
  get '/listings/new_phone', to: 'listings#new_phone', as: 'newphone'
  get '/listings/new_laptop', to: 'listings#new_laptop', as: 'newlaptop'
  resources :listings, only: [:create, :show]
  resources :products, only: [:show]
  get '/', to: 'users#index', as: 'home'
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
