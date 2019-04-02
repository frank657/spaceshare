class User < ApplicationRecord
  validates :open_id, presence: true
  validates :username, presence: true
end
