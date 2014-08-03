Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index'
<<<<<<< HEAD
  resources :stickies
  resources :boards
=======

  resources :boards
  delete 'boards/:id' => 'boards#destroy', :as => 'delete_board'
>>>>>>> f06e62e2102aff5a9fb8c3dd14298b5abbd8e7be
end
