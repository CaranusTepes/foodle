Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/about', to: 'meals#about'
  get '/download', to: 'meals#download'
  get '/contact', to: 'meals#contact'
  get '/categories', to: 'meal_details#category'
  get '/meal_details', to: 'meal_details#details'
  get '/category_meals', to: 'meal_details#list'


  root to: 'static#index'
end
