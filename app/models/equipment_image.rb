class EquipmentImage < ApplicationRecord
  belongs_to :equipment
  has_one_attached :image
end
