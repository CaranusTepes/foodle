class MealDetailsController < ApplicationController
  def index
    client = Meal::Api::Client.new
    @letterlist = client.letter_list(params[:letter])
  end 
end