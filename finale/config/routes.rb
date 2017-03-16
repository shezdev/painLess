Rails.application.routes.draw do

  resources :foodlogs
  resources :painscores
  resources :results
  get 'welcome/index'

  root 'welcome#index'
end
