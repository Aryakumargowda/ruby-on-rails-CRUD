class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.datetime :order_date
      t.decimal :total_amount,default :10

      t.string :status, default :"Pending"

      t.timestamps
    end
  end
end
