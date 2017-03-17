class ResultsController < ApplicationController
  def index
    @foodlogs = Foodlog.find_by_sql("SELECT * from foodlogs WHERE foodlogs.customdate = (SELECT customdate -1 FROM painscores WHERE score = '10')")
  end
end
