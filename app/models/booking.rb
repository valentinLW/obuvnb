class Booking < ApplicationRecord
  belongs_to :shoe
  belongs_to :user
  enum status: %i[pending accepted rejected]
end
