json.extract! customer, :id, :ruc, :name, :email, :password, :register_date, :card_type, :card_number, :status, :created_at, :updated_at
json.url customer_url(customer, format: :json)