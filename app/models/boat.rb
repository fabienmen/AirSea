class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  # validates :name, presence: true
  # validates :type, presence: true
  # validates :price_daily, presence: true
  # validates :size, presense: true
  # validates :description, length: { minimum: 10 }
  # validates :production_year, presence: true
end
