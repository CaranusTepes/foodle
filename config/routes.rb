Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :meal_details, only: [:index, :show]

  get '/about', to: 'meals#about'
  get '/download', to: 'meals#download'
  get '/contact', to: 'meals#contact'

  root to: 'static#index'
end
