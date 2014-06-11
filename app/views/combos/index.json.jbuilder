json.array!(@combos) do |combo|
  json.extract! combo, :id, :product_id, :name, :description, :price
  json.url combo_url(combo, format: :json)
end
