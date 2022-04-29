class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :customer_name, null: false
      t.string :item_purchased, null: false
      t.string :quantity, null: false
      t.decimal :price, scale: 2, precision: 18, default: 0.00
      t.references :payment_method, foreign_key: true
      t.references :currency, foreign_key: true
      t.date :day

      t.timestamps
    end
  end
end
