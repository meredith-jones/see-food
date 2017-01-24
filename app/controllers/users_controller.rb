class UsersController < ApplicationController
  before_action :authenticate_user!

    def users_only
      render json: {
        data: {
          message: "Welcome #{current_user.name}",
          user: current_user
        }
      }, status: 200
    end
end