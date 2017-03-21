class StatsController < ActionController::Base
  def index
    @painscores = Painscore.find_by_sql("SELECT foodlogs.food, foodlogs.customdate, painscores.score, activities.name, activities.exertion FROM foodlogs, painscores, activities WHERE foodlogs.customdate = painscores.customdate AND painscores.customdate = activities.customdate;")
  end
end

#
# find_by_sql("SELECT painscores.customdate, painscores.score, foodlogs.food, activities.name, activities.exertion
# FROM painscores, foodlogs, activities
# WHERE foodlogs.customdate = activities.customdate")
