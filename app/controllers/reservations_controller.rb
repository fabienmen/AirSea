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
      @first_day = params[:reservation]["start_date(3i)"]
      @first_month = params[:reservation]["start_date(2i)"]
      @first_year = params[:reservation]["start_date(1i)"]
      @last_day = params[:reservation]["end_date(3i)"]
      @last_month = params[:reservation]["end_date(2i)"]
      @last_year = params[:reservation]["end_date(1i)"]
      start_date = Date.parse("#{@first_day}-#{@first_month}-#{@first_year}")
      end_date = Date.parse("#{@last_day}-#{@last_month}-#{@last_year}")

      @total = end_date - start_date

      @reservation.price_total = @total.to_i * @boat.price_daily.to_i
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
