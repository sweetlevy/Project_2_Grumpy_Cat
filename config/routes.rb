Rails.application.routes.draw do

  get 'welcome/index'
  root to: 'welcome#index'

  #Sessions
  get  '/login'  =>  'sessions#new'
  post '/login'  =>  'sessions#create'
  get  '/logout' =>  'sessions#destroy'


  resources :users
  resources :stickies
  resources :boards
  delete 'boards/:id' => 'boards#destroy', :as => 'delete_board'

end
