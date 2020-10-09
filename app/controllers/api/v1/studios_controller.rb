class Api::V1::StudiosController < ApplicationController
    def index 
        studios = Studio.all.sort_by {  |studio| studio.name  }

        render json: studios, except: [:created_at, :updated_at]
    end

    private

    def studio_params
        params.require(:studio).permit(:name, :address, :contact, :image, :rating, :price)
    end
end
