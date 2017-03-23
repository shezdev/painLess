class Foodlog < ApplicationRecord
  validates :user_id, presence: true
  validates :food, presence: true
  belongs_to :user

  #
  # def trigger_foods_from_yesterday
  #   find_by_sql("SELECT * FROM foodlogs JOIN painscores ON (foodlogs.customdate = (painscores.customdate -1)) WHERE painscores.score = '10'")
  # end

end
