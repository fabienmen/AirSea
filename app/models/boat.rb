class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # validates :name, presence: true
  # validates :type, presence: true
  # validates :price_daily, presence: true
  # validates :size, presense: true
  # validates :description, length: { minimum: 10 }
  # validates :production_year, presence: true
end
