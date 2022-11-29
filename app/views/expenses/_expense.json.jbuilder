json.extract! expense, :id, :user_id, :category_id, :name, :sum, :description, :created_at, :updated_at
json.url expense_url(expense, format: :json)
