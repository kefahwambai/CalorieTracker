class ConsumptionsController < ApplicationController
    def index
        consumption = Consumption.all
        render json: consumption
    end
    
    def show
        consumption = Consumption.find(params[:id])
        render json: consumption
    end
    
    def create
        consumption = Consumption.create(consumption_params)
        render json: consumption
    end
    
    def update
        consumption = Consumption.find(params[:id])
        consumption.update(consumption_params)
        render json: consumption
    end
    
    def destroy
        consumption = Consumption.find(params[:id])
        if consumption.destroy
            render json: { message: "Activity deleted successfully" }
        else
            render json: { error: "Failed to delete Activity!" }, status: :unprocessable_entity
        end
    end

    private

    def consumption_params
        params.permit(:user_id, food_ids: [], :quantities: [], :consumed_at)
    end
end
