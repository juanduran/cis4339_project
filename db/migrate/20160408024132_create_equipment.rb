class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equipment_name
      t.string :equipment_location
      t.timestamps null: false
    end
  end
end
