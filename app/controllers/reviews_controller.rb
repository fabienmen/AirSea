class ReviewsController < ApplicationController

  def new
    # 1. CONFIRM IF THE BOATS PARAMS ARE CORRECT !
    @reservation = Reservation.where(boat: params[:boat_id])
    @review = Review.new
  end

  def create
  end


end
