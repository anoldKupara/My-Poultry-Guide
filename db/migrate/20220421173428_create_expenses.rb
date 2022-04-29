class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :quantity
      t.string :price
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
