json.extract! subscription, :id, :customer_id, :category_id, :status, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)