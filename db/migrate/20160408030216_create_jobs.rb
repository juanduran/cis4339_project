class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :crew_id

      t.timestamps null: false
    end
  end
end
