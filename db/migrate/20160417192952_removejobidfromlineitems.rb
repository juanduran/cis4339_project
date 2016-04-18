class Removejobidfromlineitems < ActiveRecord::Migration
  def change
    remove_column :line_items, :job_id
  end
end
