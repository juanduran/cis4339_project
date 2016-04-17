json.array!(@estimate_line_items) do |estimate_line_item|
  json.extract! estimate_line_item, :id, :quantity, :estimate_id, :service_id
  json.url estimate_line_item_url(estimate_line_item, format: :json)
end
