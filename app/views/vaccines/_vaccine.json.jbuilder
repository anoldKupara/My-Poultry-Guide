json.extract! vaccine, :id, :name, :description, :purpose, :alternative, :expiry_date, :quantity, :price, :currency_id, :created_at, :updated_at
json.url vaccine_url(vaccine, format: :json)
