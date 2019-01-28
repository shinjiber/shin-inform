Rails.application.routes.draw do
  root 'toppage#index'
  get 'toppage/show'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/signout', to: 'sessions#destroy'
end
