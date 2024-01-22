class DropallTables < ActiveRecord::Migration[7.1]
  def up
    drop_table :all_tables
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
