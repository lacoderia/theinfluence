json.array!(@purchases_addons) do |purchases_addon|
  json.extract! purchases_addon, :id, :addon_id, :user_id, :quantity, :total_price
  json.url purchases_addon_url(purchases_addon, format: :json)
end
