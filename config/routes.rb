Rails.application.routes.draw do
  # get 'bikes/index'
  # get 'bikes/show'
  # get 'bikes/new'
  # get 'bikes/edit'
  # get 'bikes/delete'
  root to: "home#main"

  get 'home/main'
  get 'home/pricing'
  get 'home/about'
  get 'home/payment'
  get 'stations/index'
  # get 'stations/show'
  # get 'stations/delete'

  resources :stations do
    member do
      get :delete
    end
  end
  resources :bikes do
    member do
      get :delete
    end
  end

  patch 'bikes/edit'
  
  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
  get 'profile', to: 'registrations#profile'

end
