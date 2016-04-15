json.array!(@businesses) do |business|
  json.extract! business, :id, :business_name, :phone_number, :email, :street_address, :city, :state, :zip
  json.url business_url(business, format: :json)
end
