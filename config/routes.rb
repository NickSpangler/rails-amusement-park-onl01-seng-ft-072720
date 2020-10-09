Rails.application.routes.draw do
  get 'attractions/new'
  get 'attractions/create'
  get 'attractions/show'
  get 'attractions/index'
  get 'attractions/destroy'
  get '/signin', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'
  root to: 'application#home'
  resources :users
  resources :attractions
  resources :rides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
