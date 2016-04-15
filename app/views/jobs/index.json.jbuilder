json.array!(@jobs) do |job|
  json.extract! job, :id, :crew_id
  json.url job_url(job, format: :json)
end
