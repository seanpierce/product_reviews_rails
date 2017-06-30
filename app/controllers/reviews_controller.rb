class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
    @product = @review.product
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating, :product_id)
  end
end
