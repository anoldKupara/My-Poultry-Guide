class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.string :name, null: false
      t.string :purpose
      t.string :source_of_fund, null: false
      t.string :project_duration
      t.decimal :amount, scale: 2, precision: 18, default: 0.00
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
