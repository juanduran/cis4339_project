json.array!(@equipment_checkouts) do |equipment_checkout|
  json.extract! equipment_checkout, :id, :checkout_date, :return_date, :employee_id, :equipment_id
  json.url equipment_checkout_url(equipment_checkout, format: :json)
end
