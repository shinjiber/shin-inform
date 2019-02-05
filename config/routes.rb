Rails.application.routes.draw do
  
  root 'toppage#index'
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  
  resources :users
  
  resources :infos
end
