class CreateAddonsCombos < ActiveRecord::Migration
  def change
    create_table :addons_combos do |t|
      t.integer :addon_int
      t.integer :combo_id
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
