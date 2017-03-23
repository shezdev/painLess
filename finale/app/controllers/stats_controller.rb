class StatsController < ActionController::Base
  def new
    @painscores = Painscore.find_by_sql("SELECT foodlogs.food, foodlogs.customdate, painscores.score, activities.name, activities.exertion, painscores.notes FROM foodlogs, painscores, activities WHERE foodlogs.customdate = painscores.customdate AND painscores.customdate = activities.customdate;")
  end

  def index
    @painscores = Painscore.find_by_sql("SELECT foodlogs.food, foodlogs.customdate, painscores.score, activities.name, activities.exertion, painscores.notes FROM foodlogs, painscores, activities WHERE foodlogs.customdate = painscores.customdate AND painscores.customdate = activities.customdate;")
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name"   # Excluding ".pdf" extension.
      end
    end
  end

end
