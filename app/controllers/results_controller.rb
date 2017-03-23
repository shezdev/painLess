class ResultsController < ApplicationController
  def index
    # @foodlogs = Foodlog.all
    # @foodlogs = Foodlog.find_by_sql("SELECT * from foodlogs WHERE foodlogs.customdate = (SELECT customdate -1 FROM painscores WHERE score = '10')")
     @foodlogs = Foodlog.find_by_sql("SELECT * FROM foodlogs JOIN painscores ON (foodlogs.customdate = (painscores.customdate -1)) WHERE painscores.score = '10'")
    #  @foodlogs = Foodlogs.trigger_foods_from_yesterday
  end
end
