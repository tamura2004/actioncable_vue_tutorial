Rails.application.routes.draw do
  resources :pages
  resources :jobs
  resources :races_initial_abilities
  resources :races
  resources :abilities
  get 'menu/index'
  root to: 'menu#index'
  resources :messages
end
