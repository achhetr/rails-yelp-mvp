class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :destroy, :edit, :update]

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

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
