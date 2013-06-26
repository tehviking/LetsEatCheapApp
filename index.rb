require './restaurant_list'
require 'awesome_print'

puts "What Kind of food do you want?"
my_food = gets.chomp
puts "What is your zip code?"
my_zip = gets.chomp

list = RestaurantList.get_food_by_zip(my_food, my_zip)

ap RestaurantList.print_response_details(list)