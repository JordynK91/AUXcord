Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/search', to: 'searches#index'
end



resources :users


root to: 'home#index'


 post '/login', to: 'sessions#create'

  get '/new', to: 'sessions#new'
  
  post '/logout', to: 'sessions#destroy'



end