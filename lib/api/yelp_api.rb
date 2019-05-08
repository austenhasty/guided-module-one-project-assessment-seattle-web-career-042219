YELP_API = "https://api.yelp.com/v3/businesses/"

DEF_LOCATION = "Seattle,WA"
DEF_NUM_RETURNED = 5
DEF_RADIUS = 5000

class YelpApi
	def self.search(location, term, radius = DEF_RADIUS)
		url = "#{YELP_API}search"
		params = {
			term: term,
			location: location,
			radius: radius,
			limit: DEF_NUM_RETURNED
		}

		response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url, params: params)
		
		response.parse
	end

	def self.idSearch(id)
		url = "#{YELP_API}#{id}"

		response = HTTP.auth("Bearer #{ENV["API_KEY"]}").get(url)
		
		response.parse
	end
end