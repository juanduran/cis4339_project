class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :customer_id
      t.date :date
      t.decimal :invoice_total
      t.string :terms
      t.integer :project_id
      t.integer :job_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
