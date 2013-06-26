require 'minitest/spec'
require 'minitest/autorun'
require './restaurant_list'

# This is a fragile test. If Yelp's list changes this will break. Maybe stub it out.
describe RestaurantList do
  it "gets a list of restaurants" do
    my_food = "pizza"
    my_zip = "78704"

    restaurants = RestaurantList.get_food_by_zip(my_food, my_zip)

    restaurants.wont_be_empty
    restaurants["businesses"].first["name"].must_equal "CraigO's Pizza & Pastaria"
  end
end