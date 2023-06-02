class Boat < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  has_one_attached :photo

  validates :name, presence: true
  # validates :address, presence: true
  # validates :type, presence: true
  # validates :price_daily, presence: true
  # validates :description, length: { minimum: 10 }
  # validates :production_year, presence: true
  # validates :picture, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  def average_review
    return 0 if reviews.empty?
    
    reviews.pluck(:rating).sum.fdiv(reviews.size)
  end

end
