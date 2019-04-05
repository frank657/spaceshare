class Space < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :district, presence: true, inclusion: { in: ["Huangpu", "Xuhui", "Changning", "Jing'an", "Putuo", "Hongkou", "Yangpu", "Minhang", "Baoshan", "Jiading", "Pudong", "Jinshan", "Songjiang", "Qingpu", "Fengxian", "Chongming"] }
  validates :address_details, presence: true
  validates :picture, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
  validates :available_spots, presence: true
  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_full_address?
  before_save :set_address
  after_save :set_manager

  def set_address
    self.full_address = "#{self.address_details}, #{self.district}, Shanghai"
  end

  def set_manager
    self.user.update(manager: true)
  end
end
