class StoreBuildingsController < ApplicationController
            
    def index
        render json: Store_Building.all
    end

    def show
        store_building = Store_Building.find(params[:id])
        render json: store_building, status: :ok
    end

    def create
        store_building = Store_Building.create!(store_building_params)
        render json: store_building, status: :created
    end

    def destroy
        store_building = Store_Building.find(params[:id])
        store_building.destroy
    end

    def update
        store_building = Store_Building.find(params[:id])
        store_building.update(store_building_params)
        render json: store_building
    end

    private

    def store_building_params
        params.permit(:cost, :name, :description, :unlock_level, :store_id)
    end
end
