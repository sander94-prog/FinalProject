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
        @buisness = Buisness.new(buisness_params)
        
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
        
        if @buisness.update(buisness_params)
            redirect_to @buisness
        else
            render 'edit' 
        end
    end
    
    def destroy
        @buisness = Buisness.find(params[:id])
        @buisness.destroy
        
        redirect_to buisness_path
    end
end

private
def buisness_params
    params.require(:buisness).permit(:name, :address)
end
