class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @shoe = Shoe.find(params[:shoe_id])
    @booking.shoe = @shoe
    @booking.total_price = 30
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show

  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_date, :return_date)
  end
end
