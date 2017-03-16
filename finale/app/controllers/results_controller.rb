class ResultsController < ApplicationController
  def index
    @foodlogs = Foodlog.first
  end
end
