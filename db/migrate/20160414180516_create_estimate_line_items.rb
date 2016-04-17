class CreateEstimateLineItems < ActiveRecord::Migration
  def change
    create_table :estimate_line_items do |t|
      t.integer :quantity
      t.integer :estimate_id
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
