class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
  end

  private

  def reviews_param
    param.require(:review).permit(:rating, :content)
  end
end
