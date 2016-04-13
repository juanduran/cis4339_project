class VehicleCheckout < ActiveRecord::Base

  belongs_to :crew
  belongs_to :vehicle

end
