class PagesController < ApplicationController
  def home
    @most_reviews = Product.most_reviews.order(:name)
    @recently_added = Product.recently_added
    @usa = Product.usa
  end
  def country
    @current_country = params[:country]
    @this_country = Product.select { |product| product.country == params[:country] }
  end
end
