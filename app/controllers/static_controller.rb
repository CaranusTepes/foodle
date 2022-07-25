class StaticController < ApplicationController
  def index
    client = Meal::Api::Client.new
    @randoms = client.random_meals
  end
end
