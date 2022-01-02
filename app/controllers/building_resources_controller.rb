class BuildingResourcesController < ApplicationController
    
    def index
        render json: Building_Resource.all
    end

    def show
        building_resource = Building_Resource.find(params[:id])
        render json: building_resource, status: :ok
    end

    def create
        building_resource = Building_Resource.create!(building_resource_params)
        render json: building_resource, status: :created
    end

    def destroy
        building_resource = Building_Resource.find(params[:id])
        building_resource.destroy
    end

    def update
        building_resource = Building_Resource.find(params[:id])
        building_resource.update(building_resource_params)
        render json: building_resource
    end

    private

    def building_resource_params
        params.permit(:amount, :collect_cooldown, :last_collected_at, :building_id)
    end

end
