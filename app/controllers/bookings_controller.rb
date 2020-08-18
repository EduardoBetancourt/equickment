class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @package = Package.find(params[:package_id])
    @booking.user = current_user
    @booking.package = @package
    if @booking.save
      redirect_to bookings_path(current_user)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
