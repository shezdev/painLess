class AddCustomdateToPainscores < ActiveRecord::Migration[5.0]
  def change
    add_column :painscores, :customdate, :date
  end
end
