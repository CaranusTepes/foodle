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
    @meal_details.each do |mealDetails|
      @youtube_link = mealDetails[1][0]["strYoutube"]
    end
    @youtube = YouTubeAddy.extract_video_id(@youtube_link)
  end

  def list
    client = Meal::Api::Client.new
    @category_details= client.meal_category(params[:category])
    @category_details.each do |catDetails|
      @categoryDetails = catDetails[1]
    end
  end
end