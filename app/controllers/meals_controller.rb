class MealsController < ApplicationController
  def index
    client = Meal::Api::Client.new
    @random_meals = client.random_meals
  end
end
