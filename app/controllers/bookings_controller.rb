class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @booking = Booking.create(booking_params)
  end

  def show
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_date, :return_date)
  end
end
