class Shoe < ApplicationRecord
  belongs_to :user
  has_many_attached :images
  has_many :bookings

  def unavailable_dates
    bookings.pluck(:pick_up_date, :return_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
