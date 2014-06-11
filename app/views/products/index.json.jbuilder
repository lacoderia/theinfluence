json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :image, :benefits, :active, :short_description
  json.url product_url(product, format: :json)
end
