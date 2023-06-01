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
  end

  def user_index
    
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
    params.require(:boat).permit(:name, :category, :price_daily, :size, :description, :production_year, :photo)
  end
end
