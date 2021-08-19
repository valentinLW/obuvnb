class Booking < ApplicationRecord
  belongs_to :shoe
  belongs_to :user

  validates :pick_up_date, :return_date, presence: true
  validate :return_date_after_pick_up_date

  private

  def return_date_after_pick_up_date
    return if return_date.blank? || pick_up_date.blank?

    if return_date < pick_up_date
      errors.add(:return_date, "must be after the pick up date")
    end
 end
end
