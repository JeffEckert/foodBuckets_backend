class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all 
        render json: CategorySerializer.new(categories)
    end

    def create 
        category = Category.new(category_params)
        if category.save
            render json: category, status: :accepted 
        else
            render json: {errors: category.errors.full_messages}, status: :uprocessable_entity
        end
    end


    private

    def category_params
        params.require(:Category).permit(:category)
    end
end
