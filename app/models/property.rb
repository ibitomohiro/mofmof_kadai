class Property < ApplicationRecord
  has_many :closest_stations, dependent: :destroy
  accepts_nested_attributes_for :closest_stations 
  validates :property_name, presence: true
  validates  :rent, presence: true
  validates :address, presence:true
  validates :age, presence: true
  validates :note, length: { maximum:140 }, allow_blank: true

end
