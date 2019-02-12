Rails.application.routes.draw do
  
  get 'info_ranking/index'
  root 'toppage#index'
  
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
  
  resources :users
  
  resources :infos
  
  resources :scores, only: [:create, :destroy]
end
