Rails.application.routes.draw do

  resources :foodlogs
  resources :painscores
  
  get 'welcome/index'

  root 'welcome#index'
end
