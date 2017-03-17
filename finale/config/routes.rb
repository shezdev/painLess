Rails.application.routes.draw do

  devise_for :users
  resources :foodlogs
  resources :painscores
  resources :results
  get 'welcome/index'

  root 'welcome#index'
end
