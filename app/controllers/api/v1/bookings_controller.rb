class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def index
  end

  def create
    @booking = Booking.new(booking_params)
  end

  def destroy
    @booking.delete
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :space_id)
  end

  def set_booking
    @booking = Booking.find(params(:id))
  end
end
