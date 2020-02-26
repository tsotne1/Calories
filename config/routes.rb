Rails.application.routes.draw do
  get 'food_meals/create'
  root 'home#index'
  resources :meals

  get 'search_food', to: 'meals#search'

  resources :food_meals
end
