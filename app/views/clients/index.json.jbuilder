json.array!(@clients) do |client|
  json.extract! client, :id, :lastnameorbizname, :firstname
  json.url client_url(client, format: :json)
end
