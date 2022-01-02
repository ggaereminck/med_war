class KingdomsController < ApplicationController
        
    def index
        render json: Kingdom.all
    end

    def show
        kingdom = Kingdom.find(params[:id])
        render json: kingdom, status: :ok
    end

    def create
        kingdom = Kingdom.create!(kingdom_params)
        render json: kingdom, status: :created
    end

    def destroy
        kingdom = Kingdom.find(params[:id])
        kingdom.destroy
    end

    def update
        kingdom = Kingdom.find(params[:id])
        kingdom.update(kingdom_params)
        render json: kingdom
    end

    private

    def kingdom_params
        params.permit(:name, :emblem, :user_id)
    end

end
