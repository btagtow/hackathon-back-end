class PodsController < ApplicationController

    def index
        current = Pod.find_by(date: params["date"])
        if current
            render json: current
        else 
            @pods = Pod.all 
            render json: @pods
        end
    end 

    def show 
        @pod = Pod.find(params[:id])
        render json: @pod 
    end

end
