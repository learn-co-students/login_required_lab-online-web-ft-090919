Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :sessions, only: [:new, :create, :index]
  # resources :secrets, only: [:show] #  secret GET  /secrets/:id(.:format)  secrets#show
  
  get '/show', to: 'secrets#show' # show GET  /show(.:format)   secrets#show
  post '/destroy', to: 'sessions#destroy'
  root 'sessions#new'

end
