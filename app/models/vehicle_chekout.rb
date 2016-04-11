class VehicleChekout < ActiveRecord::Base

  has_many :crews
  has_many :vehicle_checkouts


end
