class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.float :price
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
