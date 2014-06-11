json.array!(@addons) do |addon|
  json.extract! addon, :id, :name, :description
  json.url addon_url(addon, format: :json)
end
