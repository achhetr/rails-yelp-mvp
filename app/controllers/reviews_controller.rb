class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_param)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(params[:restaurant_id])
    else
      render :new
    end
  end

  private

  def reviews_param
    params.require(:review).permit(:rating, :content)
  end
end
