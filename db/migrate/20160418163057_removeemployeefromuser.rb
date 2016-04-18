class Removeemployeefromuser < ActiveRecord::Migration
  def change
    remove_column :users, :employee_id
  end
end
