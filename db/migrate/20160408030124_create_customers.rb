class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :phone_number
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :business_id

      t.timestamps null: false
    end
  end
end
