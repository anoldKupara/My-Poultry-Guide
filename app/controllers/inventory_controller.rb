class InventoryController < ApplicationController
  def index
    @inventories = Inventory.find_by_sql("SELECT code, budget_item_id, name, description, purpose,inventory_category_id,budget_category_id,SUM(quantity) AS quantity,amount, AVG(amount) AS unit_price, measuring_unit_id, location_id, budget_item_id FROM inventories GROUP BY budget_item_id")
  end
end
