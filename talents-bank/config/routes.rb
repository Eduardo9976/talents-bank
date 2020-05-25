Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'home#index'
  resources :opportunities, only: %i[index new create show edit update destroy]


end
