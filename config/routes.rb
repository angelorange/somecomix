Rails.application.routes.draw do
  root to: 'home#page'
  resources :comics
end
