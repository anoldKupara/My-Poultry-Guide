json.extract! budget, :id, :name, :purpose, :source_of_fund, :project_duration, :amount, :currency_id, :created_at, :updated_at
json.url budget_url(budget, format: :json)
