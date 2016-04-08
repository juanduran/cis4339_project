class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.float :price
      t.integer  :line_item_id
      t.integer  :job_id
      t.integer  :user_id
      t.timestamps null: false
    end
  end
end
