class Api::V1::FavoritesController < ApplicationController
    def index 
        favorites = Favorite.all

        render json: favorites, except: [:created_at, :updated_at]
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

    private
end
