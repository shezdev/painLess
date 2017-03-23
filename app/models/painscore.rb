class Painscore < ApplicationRecord
  validates :user_id, presence: true
  validates :customdate, presence: true, uniqueness: true
  validates_numericality_of :score, presence: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10
  belongs_to :user
end
