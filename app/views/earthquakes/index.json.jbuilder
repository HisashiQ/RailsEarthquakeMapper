json.earthquake @earthquakes.each do |earthquake|
json.partial! "earthquakes/earthquake", earthquake: earthquake
end