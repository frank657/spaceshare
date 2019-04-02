class User < ApplicationRecord
  validates :open_id, presence: true
  validates :user_name, presence: true
end
