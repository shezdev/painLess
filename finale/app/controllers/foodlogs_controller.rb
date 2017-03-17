class FoodlogsController < ApplicationController
  def new
    @foodlog = Foodlog.new
  end

  def create
    @foodlog = Foodlog.create(foodlog_params)
    redirect_to foodlogs_path
  end

  def foodlog_params
    params.require(:foodlog).permit(:food, :customdate)
  end

  def index
    @foodlogs = Foodlog.all
  end

end
