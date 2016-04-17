class EquipmentCheckout < ActiveRecord::Base

  belongs_to :equipment
  belongs_to :employee
  validates :checkout_date, :return_date,presence: true
end
