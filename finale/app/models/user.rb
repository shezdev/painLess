class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :foodlogs, dependent: :destroy
  has_many :painscores, dependent: :destroy
  has_many :activities, dependent: :destroy

  accepts_nested_attributes_for :foodlogs, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :painscores, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :activities, allow_destroy: true, reject_if: :all_blank
end
