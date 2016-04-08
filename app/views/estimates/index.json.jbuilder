json.array!(@estimates) do |estimate|
  json.extract! estimate, :id, :potential_customer, :terms, :description, :quantity, :total, :customer_id
  json.url estimate_url(estimate, format: :json)
end
