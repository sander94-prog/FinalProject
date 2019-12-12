class ReservationsController < ApplicationController
    def index
        @reservation = Reservation.all
    end 
    
    def show
        @reservation = Reservation.find(params[:id])
    end
    
    def new
        @reservation = Reservation.new
    end
    
    def create
        @reservation = Reservation.new(reservation_params)
        
        if @reservation.save
            redirect_to @reservation
        else
            render 'new'
        end
    end
    
    def edit
        @reservation = Reservation.find(params[:id])
    end
    
    def update
        @reservation = Reservation.find(params[:id]) 
        
        if @reservation.update(reservation_params)
            redirect_to @reservation
        else
            render 'edit' 
        end
    end
    
    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy
        
        redirect_to reservations_path
    end
end

private
def reservation_params
    params.permit(:lot, :license, :make, :model)
end
