class Dropjobstable < ActiveRecord::Migration
  class Dropjobstable < ActiveRecord::Migration
    def up
      drop_table :jobs
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
