class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :crew_name
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
