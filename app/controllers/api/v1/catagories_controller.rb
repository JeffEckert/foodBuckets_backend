class Api::V1::CatagoriesController < ApplicationController

    def index
        catagories = Catagory.all 
        render json: CatagorySerializer.new(catagories)
    end

    def create 
        catagory = Catagory.new(catagory_params)
        if catagory.save
            render json: catagory, status: :accepted 
        else
            render json: {errors: catagory.errors.full_messages}, status: :uprocessable_entity
        end
    end


    private

    def catagory_params
        params.require(:Catagory).permit(:catagory)
    end
end
