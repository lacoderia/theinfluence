json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :image, :benefits, :active, :short_description, :signin_link
  json.url product_url(product, format: :json)
end
