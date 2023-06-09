class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  has_many :reviews

  validates :start_date, :end_date, :price_daily, :price_total, presence: true
end
