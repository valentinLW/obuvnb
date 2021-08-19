class Shoe < ApplicationRecord
  belongs_to :user
  has_one_attached :image1
  has_one_attached :image2
  has_one_attached :image3
  has_one_attached :image4
  has_one_attached :image5

  def unavailable_dates
    booking.pluck(:pick_up_date, :return_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
