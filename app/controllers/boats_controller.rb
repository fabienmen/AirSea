class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]

  def index
    @boats = Boat.all
  end

  def show
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
