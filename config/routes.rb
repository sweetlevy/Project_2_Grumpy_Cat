Rails.application.routes.draw do

  root to: 'sessions#new'

  #Sessions
  get  '/login'  =>  'sessions#new'
  post '/login'  =>  'sessions#create'
  get  '/logout' =>  'sessions#destroy'

  get '/users/profile' =>'users#profile'
  get '/users/profiles' =>'users#profiles'
  get '/users/search' =>'users#search'
  get '/users/search_results' =>'users#search_results'
  resources :users
  resources :collaborations, except: [:index, :edit, :update, :show]
  resources :stickies
  resources :boards
  resources :categories

end
