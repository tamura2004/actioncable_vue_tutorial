Rails.application.routes.draw do
  resources :jobs
  resources :races_initial_abilities
  resources :races
  resources :abilities
  get 'menu/index'
  root to: 'menu#index'
  resources :messages
end
