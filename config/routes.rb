Rails.application.routes.draw do

  get '/new', to: 'users#new', as: 'new'
  post '/new', to: 'users#create'
  get 'login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/welcome', to: 'users#show', as: 'user'

end
