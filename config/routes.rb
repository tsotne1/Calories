Rails.application.routes.draw do
  root 'home#index'
  get 'meals', to: 'meals#index'
end
