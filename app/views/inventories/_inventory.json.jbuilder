json.extract! inventory, :id, :item_name, :purpose, :quantity, :value, :currency_id, :expiry_date, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
