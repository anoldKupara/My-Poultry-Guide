class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string :item_name, null: false
      t.string :purpose
      t.string :quantity, null: false
      t.decimal :value, scale: 2, precision: 18, default: 0.00
      t.references :currency, foreign_key: true
      t.date :expiry_date

      t.timestamps
    end
  end
end
