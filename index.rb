require 'yelpster'
require 'awesome_print'



puts "What Kind of food do you want?"
food = gets.chomp
puts "What is your zip code?"
zip = gets.chomp
	
client = Yelp::Client.new()

request = Yelp::V2::Search::Request::Location.new(
            :term => "#{food}",
            :zipcode => "#{zip}",
            :radius_filter => 1000,
            :deals_filter => true,
           



            :consumer_key => ENV['CONSUMER_KEY'],
            :consumer_secret => ENV['CONSUMER_SECRET'],
            :token => ENV['TOKEN'],
            :token_secret => ENV['TOKEN_SECRET'])
 response = client.search(request)


 response["businesses"].each do |rating|
 	puts ap rating["name"]
 	puts ap rating['display_phone']
 	puts ap rating['location']['display_address'][0]
 	puts ap rating['location']['display_address'][1]
 	puts ap rating['location']['display_address'][2]
 	puts ap rating['rating']
 	
end






























 # rating

# # # categories if category is not specified, we automatically search for "food, restaurants"
# # category_filter
# # deals_filter



# # distance

# # location or search location.postal_code


# # # radius_filter hardcode radius distance to  be five miles. We can change later

# # Yelp Deals Information:
# # deals
# # deals.id
# # deals.title
# # deals.url
# # deals.image_url
# # deals.currency_code
# # deals.time_start
# # deals.time_end
# # deals.what_you_get
# # deals.options.remaining_count

# e18OcDBTISKtZLdG5JcpNA



# def method(American)
# puts "Where are you?"
# zip = gets.chomp.to_i
# puts What do you feel like eating?

# category  = gets.chomp
# 	if category.class = st
# puts Minimu


# search("#{category}", )


