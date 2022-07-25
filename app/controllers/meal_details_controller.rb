class MealDetailsController < ApplicationController
  def category
    client = Meal::Api::Client.new
    @category_list = client.category_list
    @category_list.each do |category|
      @categoryList = category[1]
    end
  end 
  
  def details
    client = Meal::Api::Client.new
    @meal_details= client.meal_details(params[:id])
  end
end