class RestaurantsController < ApplicationController
  include RestaurantsHelper

  def show
  end

  def index
    restaurants = search_by_zip("94552")
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
  end

  def update
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :image_url, :phone_number, :address1, :address2, :city, :state, :zip_code, :longitude, :latitude)
  end

end
