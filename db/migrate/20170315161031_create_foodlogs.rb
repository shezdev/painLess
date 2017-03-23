class CreateFoodlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :foodlogs do |t|
      t.string :food

      t.timestamps
    end
  end
end
