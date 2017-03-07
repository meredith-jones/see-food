require 'restaurants_helper'

class RestaurantsController < ApplicationController
  include RestaurantsHelper

  def index
    @restaurants = search_by_zip("94552")
  end

  def show
  end

  def create
    # thinking we should intantiate all these things here, because pictures and likes depend on restaurants:
    # restaurant = Restaurant.new(restaurant_params)
    # restaurant.save
    # picture = Picture.new(restaurant_id: restaurant.id, pic_url: restaurant_params.image_url, user_id: current_user.id)
    # picture.save
    # like = Like.new(picture_id: picture.id, user_id: current_user.id)
    # like.save
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
