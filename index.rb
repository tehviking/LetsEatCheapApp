require 'yelpster'
# require 'yelp'


puts "What Kind of food do you want?"
food = gets.chomp
puts "What is your zip code?"
zip = gets.chomp
	
client = Yelp::Client.new()

request = Yelp::V2::Search::Request::Location.new(
            :term => "#{food}",
            :zipcode => "#{zip}",
            :consumer_key => 'yPWBjYp_MlDc3m9e3Zjhog',
            :consumer_secret => 'JUxpieZIIXRGGIEviA-fJPEvBLk',
            :token => 'Reg5_UU-fWGUeSkNwbAEd92h11silZ8G',
            :token_secret => '17OofBrcIHUFqkN_tFOErPVqStI')
 response = client.search(request)
 
 puts response

				



































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

