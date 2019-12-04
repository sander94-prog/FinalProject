class ParkingsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:parking]
    end
end
