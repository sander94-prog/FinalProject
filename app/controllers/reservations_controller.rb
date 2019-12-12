class ReservationsController < ApplicationController
    def index
        @reservation = Reservation.all
    end 
    
    def show
        @reservation = Reservation.find(params[:id])
<<<<<<< HEAD

=======
        
>>>>>>> 63b1d466fb8ed5f61bbde0fa82c62d336608a81d
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
    params.require(:reservation).permit(:lot, :license, :make, :model)
end
