json.array!(vehicle_checkouts) do |vehicle_chekout|
  json.extract! vehicle_chekout, :id, :checkout_date, :return_date, :crew_id, :vehicle_id
  json.url vehicle_chekout_url(vehicle_chekout, format: :json)
end
