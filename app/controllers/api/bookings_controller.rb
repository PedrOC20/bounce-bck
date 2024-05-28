  class Api::BookingsController < ApplicationController
    before_action :authenticate_user!

    def create
      booking = Booking.create(booking_params)
      booking.user = current_user
      store = Store.find(params[:store_id])
      booking.store_id = store.id

      sleep 5.seconds


      if booking.save
        render json: {
          status: {code: 200, message: 'Booking Created.'},
          data: BookingSerializer.new(booking).serializable_hash[:data][:attributes]
        }
      else
        render json: {
          status: {message: "Booking couldn't be created successfully. #{booking.errors.full_messages.to_sentence}"}
        }, status: :unprocessable_entity
      end
    end

    private

    def booking_params
      params.require(:booking).permit(
        :number_of_bags,
        :starts_at,
        :ends_at,
      )
    end
  end