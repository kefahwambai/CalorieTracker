class ActivitiesController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end
    
    def show
        activities = Activity.find(params[:id])
        render json: activities
    end
    
    def create
        activities = Activity.create(activities_params)
        render json: activities
    end
    
    def update
        activities = Activity.find(params[:id])
        activities.update(activities_params)
        render json: activities
    end
    
    def destroy
        activities = Activity.find(params[:id])
        if activities.destroy
            render json: { message: "Activity deleted successfully" }
        else
            render json: { error: "Failed to delete Activity!" }, status: :unprocessable_entity
        end
    end

    private

    def activities_params
        params.permit(:user_id, :activity, :calories_burned, :activity_date)
    end

end
