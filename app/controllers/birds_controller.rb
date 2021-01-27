class BirdsController < ApplicationController
    def index 
        birds = Bird.all 
        render json: BirdSerializer.new(birds)
    end 

    def show 
        bird = Bird.find(params[:id])
        options = {
            include: [:locations, :sightings]
        }
        render json: BirdSerializer.new(bird, options)
    end 
end
