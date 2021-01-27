class LocationsController < ApplicationController
    def index 
        locations = Location.all 
        render json: LocationSerializer.new(locations)
    end 

    def show 
        location = Location.find(params[:id])
        options = {
            include: [:sightings, :birds]
        }
        render json: LocationSerializer.new(location, options)
    end 
end 