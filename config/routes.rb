Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search', to: 'searches#index'
  post '/search', to: 'searches#search'
  get '/search/:id', to: 'searches#index'
  get '/events/:id', to: 'searches#show'
  # post '/concert', to: 'concerts#moveConcertToPast'


resources :users
resources :concerts



root to: 'home#index'


post '/login', to: 'sessions#create'
  
post '/logout', to: 'sessions#destroy'

get '/login', to: 'home#login'

end