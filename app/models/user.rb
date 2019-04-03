class User < ApplicationRecord
  has_many :bookings
  has_many :spaces
  validates :open_id, presence: true
end
