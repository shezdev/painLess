class ActivitiesController < ApplicationController
  def new
    @activity = Activity.new
  end
end
