class Product < ApplicationRecord
  validates :name, :cost, :country, :presence => true
   has_many :reviews

  scope :most_reviews, -> {(
    select("products.name, products.id, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(3)
  )}
end
