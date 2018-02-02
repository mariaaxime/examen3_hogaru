Rails.application.routes.draw do
  
  root 'static_pages#home'

  devise_for :users
  
  resources :users
  resources :calories_registries
  
  get '/progress/:id', to: 'users#resume', as: :progress
  
end
