class Addphonetoemployee < ActiveRecord::Migration
  def change
    add_column :employees, :employee_phone, :string
  end
end
