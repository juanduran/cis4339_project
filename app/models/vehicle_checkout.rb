class VehicleCheckout < ActiveRecord::Base

  belongs_to :vehicle
  belongs_to :crew
end
