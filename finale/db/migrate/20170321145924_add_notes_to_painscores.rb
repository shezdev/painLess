class AddNotesToPainscores < ActiveRecord::Migration[5.0]
  def change
    add_column :painscores, :notes, :text
  end
end
