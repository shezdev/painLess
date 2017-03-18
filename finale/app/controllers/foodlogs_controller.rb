class FoodlogsController < ApplicationController
  before_action :authenticate_user!

  def new
    @foodlog = current_user.foodlogs.build
    @foodlogs = current_user.foodlogs.all
  end

  def create
    @foodlog = current_user.foodlogs.build(foodlog_params)
    if @foodlog.save
      redirect_to new_foodlog_path
    else
      redirect_to new_foodlog_path
    end
  end

  def foodlog_params
    params.require(:foodlog).permit(:food, :customdate)
  end

  def destroy
    @foodlog = Foodlog.find(params[:id])
    @foodlog.delete
    redirect_to new_foodlog_path
  end

  def index
    @foodlogs = current_user.foodlogs.all
  end

end
