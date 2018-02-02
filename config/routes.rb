Rails.application.routes.draw do
  
  get 'progress_trackers/new'

  get 'progress_trackers/show'

  root 'static_pages#home'

  devise_for :users
  
  resources :users
  resources :calories_registries
  resources :progress_trackers
  
  get '/progress/:id', to: 'users#resume', as: :progress
  
end
