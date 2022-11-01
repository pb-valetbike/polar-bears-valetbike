Rails.application.routes.draw do
  get 'home/main'
  get 'home/pricing'
  get 'home/about'
  get 'stations/index'

  root to: "home#main"
end
