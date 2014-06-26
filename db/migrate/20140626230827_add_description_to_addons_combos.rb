class AddDescriptionToAddonsCombos < ActiveRecord::Migration
  def change
    add_column :addons_combos, :description, :string, :default => nil
  end
end
