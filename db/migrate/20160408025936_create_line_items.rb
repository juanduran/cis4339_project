class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.integer :service_id
      t.integer :job_id
      t.integer :invoice_id

      t.timestamps null: false
    end
  end
end
