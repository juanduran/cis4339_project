class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_name
      t.string :vechile_location
      t.timestamps null: false
    end
  end
end
