json.array!(@assets) do |asset|
  json.extract! asset, :id, :product_id, :url, :url_thumb, :name, :asset_type
  json.url asset_url(asset, format: :json)
end
