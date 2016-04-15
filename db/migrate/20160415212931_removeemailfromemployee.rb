class Removeemailfromemployee < ActiveRecord::Migration
  def change
    remove_column :employees, :employee_email
  end
end
