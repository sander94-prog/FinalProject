class BusinessController < ApplicationController
    def index
        @business = Business.all
    end 
    
    def show
        @business = Business.find(params[:id])
    end
    
    def new
        @business = Business.new(business_params)
    end
    
    def create
        @business = Business.new(business_path)
        
        if @business.save
            redirect_to @business
        else
            render 'new'
        end
    end
    
    def edit
        @business = Business.find(params[:id])
    end
    
    def update
        @business = Business.find(params[:id]) 
        
        if @business.update(business_path)
            redirect_to @business
        else
            render 'edit' 
        end
    end
    
    def destroy
        @reservation = Business.find(params[:id])
        @reservation.destroy
        
        redirect_to business_path
    end
end

private
def business_params
    params.require(:business).permit(:names, :address)
end
