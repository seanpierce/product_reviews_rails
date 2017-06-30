class PagesController < ApplicationController
  def home
    @most_reviews = Product.most_reviews.order(:name)
  end
end
