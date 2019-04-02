class User < ApplicationRecord
  validates :user_id, presence: true
  validates :user_name, presence: true
end
