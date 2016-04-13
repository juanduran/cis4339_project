class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
t.string :name, limit: 255
t.integer :role_id
    end
  end
end
