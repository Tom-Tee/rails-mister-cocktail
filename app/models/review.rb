class Review < ApplicationRecord
  belongs_to :cocktail
  validates :rating, :inclusion => 1..10
end

