class PagesController < ApplicationController
  def home
    @most_reviews = Product.most_reviews.order(:name)
    @recently_added = Product.recently_added
  end
end
