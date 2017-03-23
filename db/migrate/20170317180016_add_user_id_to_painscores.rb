class AddUserIdToPainscores < ActiveRecord::Migration[5.0]
  def change
    add_reference :painscores, :user, foreign_key: true
  end
end
