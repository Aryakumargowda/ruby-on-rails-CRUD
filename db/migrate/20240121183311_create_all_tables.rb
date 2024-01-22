class CreateAllTables < ActiveRecord::Migration[7.1]
  def change
    create_table :all_tables do |t|
      t.text :data

      t.timestamps
    end
  end
end
