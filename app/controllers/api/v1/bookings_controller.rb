class Api::V1::BookingsController < Api::V1::BaseController
  before_action :set_booking, only: [:destroy]
  before_action :set_space, only: [:create]
  skip_before_action :verify_authenticity_token

  # def index
  #   # current_user
  #   # @bookings = @user.bookings
  #   @bookings = Booking.all
  # end

  def create
    # current_user
    # binding.pry
    @booking = Booking.new(booking_params)
    @booking.space = @space
    if @booking.save
      render :index
    else
      render_errors
    end
  end

  def destroy
    @booking.delete
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_space
    @space = Space.find(params[:space_id])
  end
end
