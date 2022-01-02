class ResourcesController < ApplicationController
        
    def index
        render json: Resource.all
    end

    def show
        resource = Resource.find(params[:id])
        render json: resource, status: :ok
    end

    def create
        resource = Resource.create!(resource_params)
        render json: resource, status: :created
    end

    def destroy
        resource = Resource.find(params[:id])
        resource.destroy
    end

    def update
        resource = Resource.find(params[:id])
        resource.update(resource_params)
        render json: resource
    end

    private

    def resource_params
        params.permit(:name, :img, :amount, :kingdom_id)
    end

end
