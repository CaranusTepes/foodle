module Meal
  module Api
    class Client
      BASE_URL = "https://www.themealdb.com".freeze

      def category_list
        send_request(:get, "/api/json/v2/9973533/categories.php")
      end
      
      def meal_category(category)
        send_request(:get, "/api/json/v2/9973533/filter.php?c=#{category}")
      end

      def random_meals
        send_request(:get, "/api/json/v2/9973533/randomselection.php")
      end

      def meal_details(id)
        send_request(:get, "/api/json/v2/9973533/lookup.php?i=#{id}")
      end

      private
        def send_request(http_method, path_to_resource)
          connection = Faraday.new(url: BASE_URL)
          response = connection.public_send(http_method, path_to_resource)
          JSON.parse(response.body)
        end
    end
  end
end