class CreateVaccines < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccines do |t|
      t.string :name, null: false
      t.string :description
      t.string :purpose
      t.string :alternative
      t.date :expiry_date
      t.string :quantity, null: false
      t.decimal :price, scale: 2, precision: 18, default: 0.00
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
