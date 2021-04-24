class Api::V1::GardensController < ApplicationController

    def index 
        gardens = Garden.all 
        # render json: @gardens
        render json: GardenSerializer.new(gardens)
    end

    def create 
        garden = Garden.new(garden_params)
        if garden.save 
            render json: garden#, status: accepted => causes NameError (undefined local variable or method `accepted' for #<Api::V1::GardensController:0x007fd7d805bad8>) on POST request
        else 
            render json: {errors: garden.errors.full_messages}, status: unprocessible_entity
        end
    end

    private 

    def garden_params 
        params.require(:garden).permit(:gardener)
    end
end
