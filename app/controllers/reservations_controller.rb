class ReservationsController < ApplicationController
    def index
        @reservation = Reservation.all
    end 
    
    def show
        @reservation = Reservation.find(params[:id])
    end
    
    def new
    end
    
    def create
        @reservation = Reservation.new(reservation_params)
        
        @reservation.save
        redirect_to @reservation
    end
end

private
def reservation_params
    params.require(:reservation).permit(:lot, :license, :make, :model)
end
