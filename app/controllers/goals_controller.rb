class GoalsController < ApplicationController
    def index
        goals = Goal.all
        render json: goals
    end
    
    def show
        goals = Goal.find(params[:id])
        render json: goals
    end
    
    def create
        goals = Goal.create(goals_params)
        render json: goals
    end
    
    def update
        goals.find(params[:id])
        goals.update(goals_params)
        render json: goals
    end
    
    def destroy
        goals = Goal.find(params[:id])
        if goals.destroy
            render json: { message: "Goal deleted successfully" }
        else
            render json: { error: "Failed to delete Goals!" }, status: :unprocessable_entity
        end
    end

    private

    def goals_params
        params.permit(:uer_id, :target_weight, :goal_date, :progress)
    end
end
