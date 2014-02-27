json.array!(@trust_transactions) do |trust_transaction|
  json.extract! trust_transaction, :id, :date, :transactionAmount, :transactionType, :note
  json.url trust_transaction_url(trust_transaction, format: :json)
end
