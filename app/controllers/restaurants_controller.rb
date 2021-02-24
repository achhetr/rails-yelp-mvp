class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :destroy]

  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end
  def new
    @restaurant = Restaurant.new
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
