class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.string :potential_customer
      t.string :terms
      t.string :description
      t.integer :quantity
      t.decimal :total
      t.integer :customer_id
      t.timestamps null: false
    end
  end
end
