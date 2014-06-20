class AddActiveToAddonsCombos < ActiveRecord::Migration
  def change
    add_column :addons_combos, :active, :boolean
  end
end
