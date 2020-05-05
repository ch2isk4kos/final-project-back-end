class Api::V1::CourtsController < ApplicationController

    before_action :find_court, only: [:show, :update, :destroy]

    def index
        @courts = Court.all
        render json: @courts, status: 200
    end

    def show
        render json: @court, status: 200
    end

    def create
        @court = Court.new(court_params)
        if @court.save
            render json: @court, status: 200
        else
            render json: {error: "Something went completely wrong"}
        end
    end

    private

    def find_court
        @court = Court.find_by(params[:id])
    end

    def court_params
        params.require(:court).permit(:name, :address, :img_url, :floor_type)
    end

end
