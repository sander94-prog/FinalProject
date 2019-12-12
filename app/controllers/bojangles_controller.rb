class BojanglesController < ApplicationController
    def index
        @bojangle = Bojangle.all
    end 
    
    def show
        @bojangle = Bojangle.find(params[:id])
    end
    
    def new
        @bojangle = Bojangle.new
    end
    
    def create
        @bojangle = Bojangle.new(bojangle_params)
        
        if @bojangle.save
            redirect_to @bojangle
        else
            render 'new'
        end
    end
    
    def edit
        @bojangle = Bojangle.find(params[:id])
    end
    
    def update
        @bojangle = Bojangle.find(params[:id]) 
        
        if @bojangle.update(bojangle_params)
            redirect_to @bojangle
        else
            render 'edit' 
        end
    end
    
    def destroy
        @bojangle = Bojangle.find(params[:id])
        @bojangle.destroy
        
        redirect_to bojangles_path
    end
end

private
def bojangle_params
    params.require(:bojangle).permit(:name, :address, :spots)
end

