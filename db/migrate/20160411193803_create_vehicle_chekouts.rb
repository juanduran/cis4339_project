class CreateVehicleChekouts < ActiveRecord::Migration
  def change
    create_table :vehicle_chekouts do |t|
      t.date :checkout_date
      t.date :return_date
      t.integer :crew_id
      t.integer :vehicle_id

      t.timestamps null: false
    end
  end
end
