Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :foodlogs
  resources :painscores
  resources :results
  resources :activities
  resources :stats

  get 'welcome/index'

  root 'welcome#index'
end
