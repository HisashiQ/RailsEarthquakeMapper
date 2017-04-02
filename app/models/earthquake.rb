class Earthquake < ApplicationRecord
	validates :apiID, uniqueness: true


	def self.check
		time = Time.now.day
		last_obj = Earthquake.last
		if last_obj != nil
			timestamp = last_obj.created_at.day
			unless timestamp == time
				Earthquake.all.destroy_all
				Earthquake.create_database
			end
		else
			Earthquake.create_database
		end
	end

	def self.create_database
		api = UrlApi.new
		ids = api.get_ids
		longs = api.get_longitude
		lats = api.get_latitudes
		places = api.get_place
		mags = api.get_mag
		size = ids.size
		i = 0
		size.times do
			Earthquake.create(apiID: ids[i], mag: mags[i], longitude: longs[i], latitude: lats[i], place: places[i])
			i += 1
		end
	end

end



