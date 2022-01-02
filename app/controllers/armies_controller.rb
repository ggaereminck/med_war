class ArmiesController < ApplicationController

    def index
        render json: Army.all
    end

    def show
        army = Army.find(params[:id])
        render json: army, status: :ok
    end

    def create
        army = Army.create!(army_params)
        render json: army, status: :created
    end

    def destroy
        army = Army.find(params[:id])
        army.destroy
    end

    def update
        army = Army.find(params[:id])
        army.update(army_params)
        render json: army
    end

    private

    def army_params
        params.permit(:id, :kingdom_id)
    end
end
