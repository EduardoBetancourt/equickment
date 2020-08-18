class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @package = Package.find(params[:package_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @package = Package.find(params[:package_id])
    @booking.user = current_user
    @booking.package = @package
    if @booking.save
      redirect_to package_path(@package)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
