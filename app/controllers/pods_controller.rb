class PodsController < ApplicationController

    def index
        @pods = Pod.all 
        render json: @pods
    end 

    def show 
        @pod = Pod.find(params[:id])
        render json: @pod 
    end

end
