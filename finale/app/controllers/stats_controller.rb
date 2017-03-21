class StatsController < ActionController::Base
  def index
    @painscores = Painscore.find_by_sql("SELECT painscores.customdate, painscores.score, foodlogs.food, activities.name, activities.exertion FROM painscores, foodlogs, activities WHERE foodlogs.customdate = activities.customdate")
  end
end

#
# find_by_sql("SELECT painscores.customdate, painscores.score, foodlogs.food, activities.name, activities.exertion
# FROM painscores, foodlogs, activities
# WHERE foodlogs.customdate = activities.customdate")
