class AddCustomdateToFoodlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :foodlogs, :customdate, :date
  end
end
