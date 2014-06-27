json.array!(@addons) do |addon|
  json.extract! addon, :id, :name, :description, :category_id, addon_order
  json.url addon_url(addon, format: :json)
end
