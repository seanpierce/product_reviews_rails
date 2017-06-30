class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
    flash[:notice] = "Review successfully added!"
      redirect_to  reviews_path
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review= Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = "Review successfully updated!"
      redirect_to reviews_path
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      flash[:notice] = "Review successfully removed!"
      redirect_to reviews_path
    end
  end

private
  def review_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:review).permit(:attribute1, :attribute2, :attribute3)
  end
end
