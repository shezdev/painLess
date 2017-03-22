class Painscore < ApplicationRecord
  validates :user_id, presence: true
  validates :customdate, presence: true
  validates :score, presence: true
  belongs_to :user
end
