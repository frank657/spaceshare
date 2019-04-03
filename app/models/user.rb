class User < ApplicationRecord
  validates :open_id, presence: true
end
