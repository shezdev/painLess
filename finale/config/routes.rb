Rails.application.routes.draw do

  resources :foodlogs
  resources :painscores
  resources :results
  resources :activities
  get 'welcome/index'

  root 'welcome#index'
end
