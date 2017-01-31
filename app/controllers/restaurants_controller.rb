class RestaurantsController < ApplicationController
  include RestaurantsHelper

  def show
  end

  def index
    restaurants = search_by_zip("94552")
  end

  def create
  end

  def update
  end

  def destroy
  end

end
