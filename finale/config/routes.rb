Rails.application.routes.draw do

  devise_for :users
  resources :foodlogs
  resources :painscores
  resources :results
  resources :activities
  get 'welcome/index'

  root 'welcome#index'
end
