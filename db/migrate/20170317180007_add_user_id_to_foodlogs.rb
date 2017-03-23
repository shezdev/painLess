class AddUserIdToFoodlogs < ActiveRecord::Migration[5.0]
  def change
    add_reference :foodlogs, :user, foreign_key: true
  end
end
