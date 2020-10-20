class Api::V1::BookingsController < ApplicationController
    def index
        bookings = Booking.all

        render json: bookings, include: [:studio, :user]
    end

    def show
        booking = Booking.find(params[:id])

        render json: booking
    end

    def create
        booking = Booking.create!(booking_params)

        render json: booking
    end

    def destroy
        booking = Booking.find(params[:id])
        booking.destroy
    end

    private

    def booking_params
        params.require(:booking).permit(:user_id, :studio_id, :hours, :price)
    end
end
