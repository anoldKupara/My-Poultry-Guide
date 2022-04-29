class CreateBirdCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :bird_categories do |t|
      t.string :name
      t.string :purpose
      t.string :breed

      t.timestamps
    end
  end
end
