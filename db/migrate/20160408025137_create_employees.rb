class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :employee_email
      t.integer :role_id
      t.integer :crew_id

      t.timestamps null: false
    end
  end
end
