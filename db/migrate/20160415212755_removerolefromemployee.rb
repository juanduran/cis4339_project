class Removerolefromemployee < ActiveRecord::Migration
  def change
    remove_column :employees, :role_id
  end
end
