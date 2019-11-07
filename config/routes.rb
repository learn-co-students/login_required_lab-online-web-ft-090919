Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/secrets', to: 'secrets#show'
  get '/new', to: 'sessions#new'

  post '/create', to: 'sessions#create'
  root 'application#greet'
  post '/destroy', to: 'sessions#destroy'
end
