json.array!(@addons_combos) do |addons_combo|
  json.extract! addons_combo, :id, :addon_id, :combo_id, :quantity, :price
  json.url addons_combo_url(addons_combo, format: :json)
end
