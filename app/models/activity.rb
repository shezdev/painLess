class Activity < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  validates_numericality_of :exertion, presence: true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 10
end
