Rails.application.routes.draw do
  get 'sessions/new'

  resources :commits

  resources :recurrence_types

  resources :iterations

  resources :transactions

  resources :recurring_transactions

  root 'welcome#index'

  get '/login', to: 'sessions#new', as: 'login'
  get '/oauth2callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
end
