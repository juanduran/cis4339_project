class CreateRoles < ActiveRecord::Migration
 
  def change
    create_table :roles do |t|
      t.string :name
      t.string :description
      t.string :user_id

      t.timestamps null: false
    end
  end
end
