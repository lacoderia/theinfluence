json.array!(@contracts) do |contract|
  json.extract! contract, :id, :details
  json.url contract_url(contract, format: :json)
end
