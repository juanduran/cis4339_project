class EquipmentCheckout < ActiveRecord::Base

  has_many :equipments
  has_many :employees



end
