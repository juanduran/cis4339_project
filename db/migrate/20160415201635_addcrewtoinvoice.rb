class Addcrewtoinvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :crew_id, :integer
  end
end
