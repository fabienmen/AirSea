class ReviewsController < ApplicationController



  def new
    # 1. CONFIRM IF THE BOATS PARAMS ARE CORRECT !
    @boat = boat.find(params[:boat_id])
    @bookmark = Bookmark.new
  end

  def create
  end


end
