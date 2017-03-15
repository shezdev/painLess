class CreatePainscores < ActiveRecord::Migration[5.0]
  def change
    create_table :painscores do |t|
      t.integer :score

      t.timestamps
    end
  end
end
