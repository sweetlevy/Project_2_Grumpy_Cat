Rails.application.routes.draw do
  get 'welcome/index'

  root to: 'welcome#index'

  resources :boards
  delete 'boards/:id' => 'boards#destroy', :as => 'delete_board'
end
