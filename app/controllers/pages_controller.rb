class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @shoes = Shoe.all
  end
end
