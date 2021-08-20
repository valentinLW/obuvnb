class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
    @booked = Booking.find_by_sql("SELECT * FROM bookings JOIN shoes ON shoes.id = bookings.shoe_id WHERE shoes.user_id = '#{current_user.id}'")
  end

  def new
    @booking = Booking.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @shoe = Shoe.find(params[:shoe_id])
    @booking.shoe = @shoe
    @booking.total_price = (@shoe.price * (@booking.return_date - @booking.pick_up_date)).to_f
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking = @booking.accepted!
    redirect_to bookings_path
  end

  def rejected
    @booking = Booking.find(params[:id])
    @booking = @booking.rejected!
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_date, :return_date)
  end
end
