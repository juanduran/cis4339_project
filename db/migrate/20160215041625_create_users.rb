class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
t.integer :role_id
    end
  end
end
