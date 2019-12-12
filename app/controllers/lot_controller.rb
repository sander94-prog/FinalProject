class LotController < ApplicationController
    
  def index
        @lot = Lot.all
  end 
    
    def show
        @lot = Lot.find(params[:id])
    end
    
    def new
        @lot = Lot.new
    end
    
    def create
        @lot = Lot.new(lot_params)
        
        if @lot.save
            redirect_to @lot
        else
            render 'new'
        end
    end
    
    def edit
        @lot = Lot.find(params[:id])
    end
    
    def update
        @lot = Lot.find(params[:id]) 
        
        if @lot.update(lot_params)
            redirect_to @lot
        else
            render 'edit' 
        end
    end
    
    def destroy
        @lot = Lot.find(params[:id])
        @lot.destroy
        
        redirect_to lots_path
    end
end

private
def lot_params
    params.require(:lot).permit(:name, :address, :spots)
end
