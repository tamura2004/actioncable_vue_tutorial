Rails.application.routes.draw do
  get 'menu/index'

  resources :messages, only: :index
  root to: 'rooms#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
