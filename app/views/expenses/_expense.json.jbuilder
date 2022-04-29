json.extract! expense, :id, :name, :quantity, :price, :currency_id, :created_at, :updated_at
json.url expense_url(expense, format: :json)
