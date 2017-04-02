json.extract! earthquake, :id, :apiID, :mag, :longitude, :latitude, :place, :created_at, :updated_at
json.url earthquake_url(earthquake, format: :json)
