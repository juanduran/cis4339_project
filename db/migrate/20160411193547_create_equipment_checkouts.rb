class CreateEquipmentCheckouts < ActiveRecord::Migration
  def change
    create_table :equipment_checkouts do |t|
      t.date :checkout_date
      t.date :return_date
      t.integer :employee_id
      t.integer :equipment_id

      t.timestamps null: false
    end
  end
end
