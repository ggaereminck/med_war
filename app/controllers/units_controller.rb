class UnitsController < ApplicationController
                    
    def index
        render json: Unit.all
    end

    def show
        unit = Unit.find(params[:id])
        render json: unit, status: :ok
    end

    def create
        unit = Unit.create!(unit_params)
        render json: unit, status: :created
    end

    def destroy
        unit = Unit.find(params[:id])
        unit.destroy
    end

    def update
        unit = Unit.find(params[:id])
        unit.update(unit_params)
        render json: unit
    end

    private

    def unit_params
        params.permit(:name, :attack, :defense, :img, :army_id)
    end
end
