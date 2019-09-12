Rails.application.routes.draw do
  #get '/listings/:id/new_comment', to: 'comments#new'
  resources :exchanges, only: [:show, :create]
  #post '/listings/:id', to: 'comments#create'
  #get '/reviews/new', to: 'reviews#new'
  #post '/products/:id', to: 'reviews#create'
  get '/listings/new_iphone', to: 'listings#new_iphone', as: 'newiphone'
  get '/listings/new_macbook', to: 'listings#new_macbook', as: 'newmacbook'
  get '/listings/:id/edit_iphone', to: 'listings#edit_iphone', as: 'editiphone'
  get '/listings/:id/edit_macbook', to: 'listings#edit_macbook', as: 'editmacbook'
  post '/exchanges/:id', to: 'exchanges#add_like'
  resources :listings, only: [:create, :show, :update] do 
    resources :comments
  end
  resources :products, only: [:show] do
    resources :reviews
  end
  get '/', to: 'products#index', as: 'home'
  resources :users, only: [:new, :create, :show, :edit, :update]
  get '/users/:id/add', to: 'users#add', as: 'addmoney'
  post '/users/:id', to: 'users#add_money'
  #sessions routes
  #get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  match '/logout', to: 'sessions#destroy', via: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
