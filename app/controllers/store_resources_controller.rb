class StoreResourcesController < ApplicationController
                
    def index
        render json: Store_Resource.all
    end

    def show
        store_resource = Store_Resource.find(params[:id])
        render json: store_resource, status: :ok
    end

    def create
        store_resource = Store_Resource.create!(store_resource_params)
        render json: store_resource, status: :created
    end

    def destroy
        store_resource = Store_Resource.find(params[:id])
        store_resource.destroy
    end

    def update
        store_resource = Store_Resource.find(params[:id])
        store_resource.update(store_resource_params)
        render json: store_resource
    end

    private

    def store_resource_params
        params.permit(:cost, :name, :amount, :unlock_level, :store_id)
    end
end
