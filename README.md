# RailsEarthquakeMapper
##### Demo at https://damp-wave-66939.herokuapp.com

### This project has the following dependencies
* Postgresql
* Google Maps (API KEY)
* Materialize
* jQuery

### To set up the project:
* Clone the repo
* cd into root
* Run `bundle install`
* Run `rails db:create db:migrate`
* Go to https://developers.google.com/maps/documentation/javascript/importing_data
to get your API key and url. It should look like `https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap`
* Create an environment variable by typing `export GOOGLE_API_KEY="YOUR URL WITH API KEY"`
* Run `rails s`

### Notes:

* Two methods in the Earthquakes model check if that day's earthquake data has been saved to the database. If it has, then no API call is made to UCGS. If the database is empty, these methods populate the database.
* An API is available for this project by navigating to https://damp-wave-66939.herokuapp.com/earthquakes.json

