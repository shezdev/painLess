class Foodlog < ApplicationRecord
  validates :user_id, presence: true
  validates :food, presence: true
  belongs_to :user
end
