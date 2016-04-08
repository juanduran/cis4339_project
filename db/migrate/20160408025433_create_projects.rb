class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :description
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
