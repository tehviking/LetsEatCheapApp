require 'yelpster'
require 'awesome_print'
require 'dotenv'

Dotenv.load

class RestaurantList
  def self.get_food_by_zip(food, zip)

    client = Yelp::Client.new
    request = Yelp::V2::Search::Request::Location.new(
                :term => food,
                :zipcode => zip,
                :radius_filter => 10000,
                :deals_filter => true,
                :consumer_key => ENV['CONSUMER_KEY'],
                :consumer_secret => ENV['CONSUMER_SECRET'],
                :token => ENV['TOKEN'],
                :token_secret => ENV['TOKEN_SECRET'])

    response = client.search(request)
  end
  
  def self.print_response_details(response)
    response["businesses"].each do |rating|
      puts ap rating["name"]
      puts ap rating['display_phone']
      puts ap rating['location']['display_address'][0]
      puts ap rating['location']['display_address'][1]
      puts ap rating['location']['display_address'][2]
      puts ap rating['rating']
    end
  end
end