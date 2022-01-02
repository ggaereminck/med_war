class StoreUnitsController < ApplicationController
                
    def index
        render json: Store_Unit.all
    end

    def show
        store_unit = Store_Unit.find(params[:id])
        render json: store_unit, status: :ok
    end

    def create
        store_unit = Store_Unit.create!(store_unit_params)
        render json: store_unit, status: :created
    end

    def destroy
        store_unit = Store_Unit.find(params[:id])
        store_unit.destroy
    end

    def update
        store_unit = Store_Unit.find(params[:id])
        store_unit.update(store_unit_params)
        render json: store_unit
    end

    private

    def store_unit_params
        params.permit(:cost, :name, :description, :attack, :defense, :unlock_level, :store_id)
    end
end
