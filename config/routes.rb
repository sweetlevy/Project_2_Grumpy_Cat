Rails.application.routes.draw do

  get 'welcome/index'
  root to: 'welcome#index'

  #Sessions
  get  '/login'  =>  'sessions#new'
  post '/login'  =>  'sessions#create'
  get  '/logout' =>  'sessions#destroy'

  #Users
  resources :users

end
