json.extract! sale, :id, :customer_name, :item_purchased, :quantity, :price, :payment_method_id, :currency_id, :day, :created_at, :updated_at
json.url sale_url(sale, format: :json)
