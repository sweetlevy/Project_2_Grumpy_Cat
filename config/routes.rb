Rails.application.routes.draw do

  root to: 'sessions#new'

  #Sessions
  get  '/login'  =>  'sessions#new'
  post '/login'  =>  'sessions#create'
  get  '/logout' =>  'sessions#destroy'

  get '/users/profile' =>'users#profile'
  get '/users/profiles' =>'users#profiles'
  resources :users
  resources :stickies
  resources :boards
  resources :categories

end
