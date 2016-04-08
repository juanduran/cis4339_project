json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vehicle_name, :vechile_location, :employee_id
  json.url vehicle_url(vehicle, format: :json)
end
