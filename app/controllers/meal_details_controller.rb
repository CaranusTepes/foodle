class MealDetailsController < ApplicationController
  def index
    client = Meal::Api::Client.new
    @details = client.meal_details(params[:id])
  end 
end