class Api::V1::FavoritesController < ApplicationController
    def index 
        favorites = Favorite.all

        render json: favorites, include: [:studio]
    end

    def show 
        favorite = Favorite.find(params[:id])

        render json: favorite, include: [:studio]
    end 

    def update
        favorite = Favorite.find(params[:id])

        favorite.update!(favorite_params)

        render json: favorite, except: [:created_at, :updated_at]
    end

    def create
        favorite = Favorite.create!(favorite_params)

        render json: favorite, except: [:created_at, :updated_at] 
    end

    def destroy
        favorite = Favorite.find(params[:id])
        favorite.destroy
    end

    private

    def favorite_params
        params.require(:favorite).permit(:user_id, :studio_id)
    end
end
