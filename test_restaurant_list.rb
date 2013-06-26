# require 'minitest/spec'
require 'minitest/autorun'
require './restaurant_list'

# This is a fragile test. If Yelp's list changes this will break. Maybe stub it out.
class TestRestaurantList < MiniTest::Unit::TestCase
  def test_gets_a_list_of_restaurants
    my_food = "pizza"
    my_zip = "78704"

    restaurants = RestaurantList.get_food_by_zip(my_food, my_zip)

    assert !restaurants.empty?
    assert_equal "CraigO's Pizza & Pastaria", restaurants["businesses"].first["name"]
  end
end