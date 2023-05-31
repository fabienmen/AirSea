class ReviewsController < ApplicationController

  def new
    # 1. CONFIRM IF THE BOATS PARAMS ARE CORRECT !
    @boat = Boat.find(params[:boat_id])
    @reservation = Reservation.find(params[:reservation_id])
    raise

  end

  def create
  end


end
