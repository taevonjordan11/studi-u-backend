class Api::V1::UsersController < ApplicationController
    def index
        users = User.all.sort_by {  |user| user.name  }

        render json: users, except: [:created_at, :updated_at]
    end

    def update
        user = User.find(params[:id])

        user.update!(user_params)

        render json: user, except: [:created_at, :updated_at]
    end

    def create
        user = User.create!(user_params)

        render json: user, except: [:created_at, :updated_at] 
    end

    def show 
        user = User.find(params[:id])
        render json: user
    end 

    

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)     
    end
end
