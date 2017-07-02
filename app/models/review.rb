class Review < ApplicationRecord
  validates :product_id, :presence => true
  validates_length_of :content, minimum: 50, maximum: 250
  validates_numericality_of :rating, less_than_or_equal_to: 5, greater_than_or_equal_to: 1
  belongs_to :product
end
