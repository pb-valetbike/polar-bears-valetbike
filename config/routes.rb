Rails.application.routes.draw do
  root to: "home#main"

  get 'home/main'
  get 'home/pricing'
  get 'home/about'
  get 'stations/index'

  get 'home/sign_up', to: 'registrations#new'
  post 'home/sign_up', to: 'registrations#create'
  get 'home/sign_in', to: 'sessions#new'
  post 'home/sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
  
end
