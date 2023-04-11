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
        food = Food.find_by(id: params[:id])
        if food && food.destroy
          render json: { message: "Food deleted successfully" }
        else
          render json: { error: "Failed to delete food" }, status: :unprocessable_entity
        end
    end
      

    private

    def foods_params
        params.permit(:name, :kcal_per_g)
    end   
end
