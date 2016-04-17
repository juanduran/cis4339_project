class Chancepotentialtoboolean < ActiveRecord::Migration
  def change
    change_column :estimates, :potential_customer, :boolean
  end
end
