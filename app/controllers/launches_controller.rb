class LaunchesController < ApplicationController
    def index
        @launches = Launch.all 
        render json: @launches
    end 

    def show 
        @launch = Launch.find(params[:id])
        render json: @launch 
    end
end
