class LikesController < ApplicationController
  before_action :authenticate_user!

    def index
    	@likes = current_user.likes

      render json: {
        data: {
          likes: @likes
        }
      }, status: 200
    end
end