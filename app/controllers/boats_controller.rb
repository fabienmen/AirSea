class BoatsController < ApplicationController
  before_action :set_boat, only: [:show, :edit, :update, :destroy, :reviews]

  def index
    @boats = Boat.all
    if params[:query].present?
      sql_subquery = <<~SQL
        boats.name @@ :query
        OR boats.category @@ :query
      SQL
      @boats = @boats.where(sql_subquery, query: params[:query])
    end

    @markers = @boats.geocoded.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {boat: boat})
      }
    end
  end

  def user_index
    @boats = Boat.all
    @boats = @boats.where(user_id: current_user)
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user

    if @boat.save
      redirect_to boats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    self.reviews
    # num = 0
    # @reviews.each do |review|
    #   console.log(review.rating)
    #   raise
    #   num += review.rating.to_i
    # end
    # @everage = num / self.review.size
  end

  def edit
  end

  def update
    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @boat.destroy
    redirect_to boats_path, status: :see_other
  end

  def reviews
    @reservations = @boat.reservations
    @reviews = []
    @reservations.each do |reservation|
      reservation.reviews.each { |review| @reviews << review }
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :category, :price_daily, :size, :description, :production_year, :photo, :address)
  end
end
