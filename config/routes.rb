Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :meal_details, only: [:index, :show]
  resources :meals, only: [:index]

  root to: 'static#index'
end
