class ReservationsController < ApplicationController
    before_action :set_reservation, only: [:destroy]
    # def show

    # end

    def index
      @reservations = Reservation.where(user: current_user)
    end

    def new
      @reservation = Reservation.new
      @boat = Boat.find(params[:boat_id])
    end

    def create
      @reservation = Reservation.new(reservation_params)
      @boat = Boat.find(params[:boat_id])
      @user = current_user
      @reservation.boat = @boat
      @reservation.user = @user
      @reservation.price_daily = @boat.price_daily
      @first_date = params[:reservation]["start_date(3i)"]
      @last_date = params[:reservation]["end_date(3i)"]
      @total = @last_date.to_i - @first_date.to_i
      @reservation.price_total = @total * @boat.price_daily.to_i
      if @reservation.save
        redirect_to reservations_path, notice: "Reservation was created."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def destroy
      @reservation.destroy
      # redirect_to list_url, notice: "Bookmark was successfully destroyed."
    end

    private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:end_date, :start_date)
    end
end
