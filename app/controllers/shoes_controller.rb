class ShoesController < ApplicationController
  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.user = current_user

    if @shoe.save!
      raise
    else
      render :new
    end
  end

  private

  def shoe_params
    params.require(:shoe).permit(:address, :model, :size, :price, :description, :image1, :image2, :image3, :image4, :image5)
  end
end
