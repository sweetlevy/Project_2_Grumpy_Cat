Rails.application.routes.draw do

  root to: 'welcome#index'

  #Sessions
  get  '/login'  =>  'sessions#new'
  post '/login'  =>  'sessions#create'
  get  '/logout' =>  'sessions#destroy'


  resources :users
  resources :stickies
  resources :boards

end
