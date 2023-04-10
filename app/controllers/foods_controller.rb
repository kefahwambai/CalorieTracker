class FoodsController < ApplicationController
    def index
        foods = Food.all
        render json: foods
    end
    
    def show
        foods = Food.find(params[:id])
        render json: foods
    end
    
    def create
        foods = Food.create(foods_params)
        render json: foods
    end
    
    def update
        foods = Food.find(params[:id])
        foods.update(foods_params)
        render json: foods
    end
    
    def destroy
        foods = Food.find(params[:id])
        if activities.destroy
            render json: { message: "Activity deleted successfully" }
        else
            render json: { error: "Failed to delete Activity!" }, status: :unprocessable_entity
        end
    end

    private

    def foods_params
        params.permit(:name, :kcal_per_g)
    end   
end
