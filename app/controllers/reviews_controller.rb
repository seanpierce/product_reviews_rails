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

  def edit
    @review = Review.find(params[:id])
    @product = @review.product
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review successfully updated!"
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @product = Review.find(params[:id]).product
    if Review.find(params[:id]).destroy
      flash[:notice] = "Review successfully removed!"
     redirect_to product_path(@product)
    end
  end

private
  def review_params
    params.require(:review).permit(:author, :content, :rating, :product_id)
  end
end
