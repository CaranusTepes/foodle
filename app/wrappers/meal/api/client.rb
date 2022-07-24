module Meal
  module Api
    class Client
      BASE_URL = "https://www.themealdb.com".freeze
      
      def meal_details(id)
        send_request(:get, "/api/json/v2/9973533/search.php?f=#{id}")
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