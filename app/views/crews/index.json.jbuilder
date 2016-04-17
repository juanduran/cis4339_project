json.array!(@crews) do |crew|
  json.extract! crew, :id, :crew_name, :employee_id
  json.url crew_url(crew, format: :json)
end
