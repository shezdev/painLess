class PainActivityController < ApplicationController
  def show
  end
  def index
    @activities = Activity.all
    @painscores = Painscore.all
  end
end
