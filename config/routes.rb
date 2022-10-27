Rails.application.routes.draw do
  get 'home/main'
  root to: "home#main"
end
