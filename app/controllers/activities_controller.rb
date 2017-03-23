class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def new
    @activity = current_user.activities.build
    @activities = current_user.activities.where(customdate: params[:customdate])
  end

  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      redirect_to new_activity_path(customdate: @activity.customdate)
    end
  end

  def activity_params
    params.require(:activity).permit(:name, :exertion, :customdate)
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    flash[:success] = "Activity deleted!"
    redirect_to new_activity_path(customdate: @activity.customdate)
  end

end
