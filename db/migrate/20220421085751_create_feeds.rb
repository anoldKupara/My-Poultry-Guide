class CreateFeeds < ActiveRecord::Migration[5.2]
  def change
    create_table :feeds do |t|
      t.string :name, null: false
      t.string :description
      t.string :purpose
      t.string :quantity, null: false
      t.decimal :price, scale: 2, precision: 18, default: 0.00
      t.string :supplier
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
