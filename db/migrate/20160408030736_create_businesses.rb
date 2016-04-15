class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_name
      t.string :phone_number
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps null: false
    end
  end
end
