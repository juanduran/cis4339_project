json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :equipment_name, :equipment_location, :employee_id
  json.url equipment_url(equipment, format: :json)
end
