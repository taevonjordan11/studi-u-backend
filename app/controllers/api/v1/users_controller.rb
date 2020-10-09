class Api::V1::UsersController < ApplicationController
    def index
        users = User.all.sort_by {  |user| user.name  }

        render json: users, except: [:created_at, :updated_at]
    end
end
