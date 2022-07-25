class MealDetailsController < ApplicationController
  def index
    client = Meal::Api::Client.new
    @category_list = client.category_list
    @category_list.each do |category|
      @categoryList = category[1]
    end
  end 
  
  def show
  end
end