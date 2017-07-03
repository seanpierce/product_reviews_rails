Rails.application.routes.draw do
  # set root page
  root :to => 'pages#home'

  # nest reviews within products
  resources :products do
    resources :reviews
  end

  # routes for user auth
  resources :users, :except => [:edit, :update]
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  # counrty path
  get '/country/:country' => 'pages#country'
end
