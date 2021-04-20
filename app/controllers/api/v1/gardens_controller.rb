class Api::V1::GardensController < ApplicationController

    def index 
        @gardens = Garden.all 
        render json: @gardens
    end

    def create 
        garden = Garden.new(garden_params)
        if garden.save 
            render json: garden, status: accepted
        else 
            render json: {errors: garden.errors.full_messages}, status: unprocessible_entity
        end
    end

    private 

    def garden_params 
        params.require(:garden)#.permit(:user_id)???
    end
end
