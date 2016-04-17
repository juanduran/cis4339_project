json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :customer_id, :date, :invoice_total, :terms, :project_id, :job_id, :user_id
  json.url invoice_url(invoice, format: :json)
end
