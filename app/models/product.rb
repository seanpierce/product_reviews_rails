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

  scope :recently_added, -> do
    products = Product.all
    recent = products.sort_by { |product| product.created_at }.reverse
    recent.slice(0, 3)
  end

  scope :highest_rated, -> do
    products = Product.all
    product_ratings = products.sort_by { |product| product.reviews.average(:rating).round(2) }.reverse
    product_ratings.slice(0, 3)
  end

end
