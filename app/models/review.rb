class Review < ApplicationRecord
  belongs_to :reservation

  # validates :comment, presence: true
  # validates :rating, inclusion: { in: (0..5) }
end
