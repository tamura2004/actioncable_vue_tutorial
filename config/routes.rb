Rails.application.routes.draw do
  resources :pages do
    collection do
      post :upload
    end
  end

  resources :jobs
  resources :races_initial_abilities
  resources :races
  resources :abilities
  get 'menu/index'
  root to: 'menu#index'
  resources :messages
end
