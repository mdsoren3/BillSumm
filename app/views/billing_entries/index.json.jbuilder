json.array!(@billing_entries) do |billing_entry|
  json.extract! billing_entry, :id, :timeBilled, :expensesBilled, :client_id
  json.url billing_entry_url(billing_entry, format: :json)
end
