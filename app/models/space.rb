class Space < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :district, presence: true, inclusion: { in: ["Huangpu", "Xuhui", "Changning", "Jing'an", "Putuo", "Hongkou", "Yangpu", "Minhang", "Baoshan", "Jiading", "Pudong", "Jinshan", "Songjiang", "Qingpu", "Fengxian", "Chongming"] }
  validates :address_details, presence: true
  validates :picture, presence: true
  validates :price, presence: true
  validates :user_id, presence: true
end
