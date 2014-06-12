json.array!(@purchases_combos) do |purchases_combo|
  json.extract! purchases_combo, :id, :user_id, :combo_id, :total_price, :upgrade
  json.url purchases_combo_url(purchases_combo, format: :json)
end
