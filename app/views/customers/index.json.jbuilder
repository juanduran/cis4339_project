json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_name, :phone_number, :email, :street_address, :city, :state, :zip, :business_id
  json.url customer_url(customer, format: :json)
end
