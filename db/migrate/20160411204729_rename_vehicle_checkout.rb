class RenameVehicleCheckout < ActiveRecord::Migration
  def change
    rename_table :vehicle_chekouts, :vehicle_checkouts
  end
end
