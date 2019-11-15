Rails.application.routes.draw do

  root 'sessions#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
  resources :secrets, only: [:new]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
