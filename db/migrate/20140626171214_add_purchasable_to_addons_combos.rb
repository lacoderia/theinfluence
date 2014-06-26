class AddPurchasableToAddonsCombos < ActiveRecord::Migration
  def change
    add_column :addons_combos, :purchasable, :boolean, :default => false
  end
end
