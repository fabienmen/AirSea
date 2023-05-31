class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy

  # validates :name, presence: true
  # validates :type, presence: true
  # validates :price_daily, presence: true
  # validates :size, presense: true
  # validates :description, length: { minimum: 10 }
  # validates :production_year, presence: true
end
