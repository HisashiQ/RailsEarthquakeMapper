require 'httparty'

class UrlApi
	time = Time.new
	API_URL = "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=#{time.year}-#{time.month}-#{(time.day)-1}&endtime=#{time.year}-#{time.month}-#{(time.day)}"

	def initialize
		response = HTTParty.get(API_URL)
		json = JSON.parse(response.body)
		@features = json['features']
		@long = []
		@lat = []
		@id = []
		@mag = []
		@place = []
	end

	def get_longitude
		@features.each do |feature|
			@long.push(feature['geometry']['coordinates'][0])
		end
		@long
	end

	def get_latitudes
		@features.each do |feature|
			@lat.push(feature['geometry']['coordinates'][1])
		end
		@lat
	end

	def get_ids
		@features.each do |feature|
			@id.push(feature['id'])
		end
		@id
	end

	def get_place
		@features.each do |feature|
			@place.push(feature['properties']['place'])
		end
		@place
	end

	def get_mag
		@features.each do |feature|
			@mag.push(feature['properties']['mag'])
		end
		@mag
	end

end