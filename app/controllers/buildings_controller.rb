class BuildingsController < ApplicationController
        
    def index
        render json: Building.all
    end

    def show
        building = Building.find(params[:id])
        render json: building, status: :ok
    end

    def create
        building = Building.create!(building_params)
        render json: building, status: :created
    end

    def destroy
        building = Building.find(params[:id])
        building.destroy
    end

    def update
        building = Building.find(params[:id])
        building.update(building_params)
        render json: building
    end

    private

    def building_params
        params.permit(:name, :resource, :img, :sell_amt, :kingdom_id)
    end
end
