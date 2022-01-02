class LevelsController < ApplicationController

            
    def index
        render json: Level.all
    end

    def show
        level = Level.find(params[:id])
        render json: level, status: :ok
    end

    def create
        level = Level.create!(level_params)
        render json: level, status: :created
    end

    def destroy
        level = Level.find(params[:id])
        level.destroy
    end

    def update
        level = Level.find(params[:id])
        level.update(level_params)
        render json: level
    end

    private

    def level_params
        params.permit(:point_cap)
    end
end
