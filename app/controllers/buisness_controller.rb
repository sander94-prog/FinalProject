class BuisnessController < ApplicationController
    def index
        @buisness = Buisness.all
    end 
    
    def show
        @buisness = Buisness.find(params[:id])
    end
    
    def new
        @buisness = Buisness.new
    end
    
    def create
        @buisness = Buisness.new(buisness_path)
        
        if @buisness.save
            redirect_to @buisness
        else
            render 'new'
        end
    end
    
    def edit
        @buisness = Buisness.find(params[:id])
    end
    
    def update
        @buisness = Buisness.find(params[:id]) 
        
        if @buisness.update(buisness_path)
            redirect_to @buisness
        else
            render 'edit' 
        end
    end
    
    def destroy
        @reservation = Buisness.find(params[:id])
        @reservation.destroy
        
        redirect_to buisness_path
    end
end

private
def reservation_params
    params.require(:buisness).permit(:names, :address)
end
