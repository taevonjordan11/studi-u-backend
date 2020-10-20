class Api::V1::StudiosController < ApplicationController
    def index 
        studios = Studio.all.sort_by {  |studio| studio.name  }

        render json: studios,  include: [:users]
    end

    def update
        studio = Studio.find(params[:id])

        studio.update!(studio_params)

        render json: studio, except: [:created_at, :updated_at]
    end

    def create
        studio = Studio.create!(studio_params)

        render json: studio, except: [:created_at, :updated_at] 
    end

    def show 
        studio = Studio.find(params[:id])

        render json: studio, include: [:users]
    end 

    def destroy
        studio = Studio.find(params[:id])
        studio.destroy
    end

    private

    def studio_params
        params.require(:studio).permit(:name, :address, :contact, :image, :rating, :price, :user_id, :description, :hours)
    end
end
