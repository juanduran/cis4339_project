class VehicleCheckout < ActiveRecord::Base

  belongs_to :vehicle
  belongs_to :crew
  validates :checkout_date, :return_date, presence: true
end
