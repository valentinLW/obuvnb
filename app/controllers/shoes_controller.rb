class ShoesController < ApplicationController
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
    @shoes = Shoe.all
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
      :image1, :image2,
      :image3, :image4, :image5
    )
  end

  def set_shoe
    @shoe = Shoe.find(params[:id])
  end
end
