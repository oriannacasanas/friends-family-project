Rails.application.routes.draw do
  resources :posts
  # resources :links

  root to: "users#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  post '/login' => 'sessions#create'
  get '/logout' => 'users#new'
end
