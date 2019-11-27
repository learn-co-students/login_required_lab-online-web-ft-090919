Rails.application.routes.draw do
  root to: 'sessions#index'
  resources :sessions, except: [:new, :show, :delete]
  get 'login', to: 'sessions#new'
  get 'secret', to: 'secrets#show'
  get 'show', to: 'sessions#show'
  get 'logout', to: 'sessions#destroy'
end
