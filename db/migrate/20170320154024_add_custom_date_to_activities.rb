class AddCustomDateToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :customdate, :date
  end
end
