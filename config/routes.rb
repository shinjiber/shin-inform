Rails.application.routes.draw do
  get 'infos/index'
  get 'infos/create'
  get 'infos/destroy'
  root 'toppage#index'
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  
  resources :users
  
  resources :infos
end
