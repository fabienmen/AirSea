class ReviewsController < ApplicationController
  before_action :set_boat, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @reservation = Reservation.find(params[:review][:reservation_id])
    @review.reservation = @reservation

    if @review.save
      redirect_to boats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def review_params
    params.require(:review).permit(:comment, :rating, :reservation_id)
  end
end
