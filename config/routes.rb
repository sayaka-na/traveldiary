Rails.application.routes.draw do
  root to: 'homes#index'

  get 'signup', to: 'users#new'
  resources :users
end
