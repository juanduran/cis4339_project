class Dropquantityfromestimate < ActiveRecord::Migration
  def change
    remove_column :estimates, :quantity
  end
end
