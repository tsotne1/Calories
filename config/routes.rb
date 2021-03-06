Rails.application.routes.draw do
  devise_for :users
  get 'food_meals/create'
  root 'home#index'
  resources :meals

  get 'search_food', to: 'meals#search'

  resources :food_meals

  get 'users', to: 'users#index'
  resources :users,  except: [:index]

  get 'datetime', to: 'food_meals#datetime'
  get 'datetime_range', to: 'food_meals#datetime_range'

  get 'destroy_meal', to: 'meals#destroy'

end
