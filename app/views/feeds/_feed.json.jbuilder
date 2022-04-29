json.extract! feed, :id, :name, :description, :purpose, :quantity, :price, :supplier, :currency_id, :created_at, :updated_at
json.url feed_url(feed, format: :json)
