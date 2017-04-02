class EarthquakesController < ApplicationController
  require 'url_api'
  before_action :set_earthquake, only: [:show, :edit, :update, :destroy]
  before_action :do_checks
  # GET /earthquakes
  # GET /earthquakes.json
  def index
    @earthquakes = Earthquake.all
		@features = [0]
  end

  # GET /earthquakes/1
  # GET /earthquakes/1.json
  def show
  end

  def quakes
	  @earthquakes = Earthquake.all.order(mag: :desc)
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_earthquake
      @earthquake = Earthquake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earthquake_params
      params.require(:earthquake).permit(:apiID, :mag, :longitude, :latitude, :place)
    end

		def do_checks
			Earthquake.check
		end
end
