class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_name
      t.string :equipment_location
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
