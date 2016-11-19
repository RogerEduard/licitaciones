json.extract! company, :id, :ruc, :name, :address, :status, :created_at, :updated_at
json.url company_url(company, format: :json)