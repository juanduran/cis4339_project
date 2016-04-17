json.array!(@employees) do |employee|
  json.extract! employee, :id, :employee_name, :employee_email, :role_id
  json.url employee_url(employee, format: :json)
end
