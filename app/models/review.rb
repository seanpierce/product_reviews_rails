class Review < ApplicationRecord
  validates :product_id, :author, :content, :rating, :presence => true
  belongs_to :product
end
