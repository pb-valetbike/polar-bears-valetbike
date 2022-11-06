Rails.application.routes.draw do
  root to: "home#main"
  
  get 'home/main'
  get 'home/pricing'
  get 'home/about'
  get 'stations/index'

  
end
