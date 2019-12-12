class SpacesController < ApplicationController
    def create
        @parking = Parking.find(params[:parking_id])
        @space = @parking.spaces.create(space_params)
        redirect_to parking_path(@parking)
        
    end
    
    private
        def space_params
            params.require(:space).permit(:numbers)
        end
end
