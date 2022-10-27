Rails.application.routes.draw do
  get 'home/main'
  get 'home/station'
  get 'home/about'
  get 'home/pricing'
  
  root to: "home#main"
end
