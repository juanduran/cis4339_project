json.array!(@vehicle_checkouts) do |vehicle_checkout|
  json.extract! vehicle_checkout, :id, :checkout_date, :return_date, :crew_id, :vehicle_id
  json.url vehicle_checkout_url(vehicle_checkout, format: :json)
end
