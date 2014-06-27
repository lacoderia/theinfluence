class AddAddonOrderToAddons < ActiveRecord::Migration
  def change
    add_column :addons, :addon_order, :integer
  end
end
