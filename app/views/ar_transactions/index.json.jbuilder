json.array!(@ar_transactions) do |ar_transaction|
  json.extract! ar_transaction, :id, :date, :transactionAmount, :transactionType, :note
  json.url ar_transaction_url(ar_transaction, format: :json)
end
