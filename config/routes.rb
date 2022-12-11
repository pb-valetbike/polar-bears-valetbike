Rails.application.routes.draw do

  get 'rides/index'
  root to: "home#main"

  get 'home/main'
  get 'home/pricing'
  get 'home/about'
  get 'home/payment'
  get 'stations/index'

  resources :stations, only:[:index, :show]
  resources :bikes, only: [:index, :update, :show, :edit]

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'email', to: 'email#edit', as: 'edit_email'
  patch 'email', to: 'email#update'
  get 'profile', to: 'registrations#profile'

end
