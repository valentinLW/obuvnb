class ShoesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_shoe, only: %i[show edit update]

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.user = current_user

    if @shoe.save!
      redirect_to shoe_path(@shoe)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @shoe.update(shoe_params)
    redirect_to shoe_path(@shoe)
  end

  def index
    if params[:size].present?
      @shoes = Shoe.where(size: params[:size])
    else
      @shoes = Shoe.all
    end
  end

  def show
  end

  private

  def shoe_params
    params.require(:shoe).permit(
      :address,
      :model,
      :size,
      :price,
      :description,
      :images => []
    )
  end

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end
end
