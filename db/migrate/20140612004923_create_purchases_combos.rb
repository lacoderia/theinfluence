# -*- encoding : utf-8 -*-
class CreatePurchasesCombos < ActiveRecord::Migration
  def change
    create_table :purchases_combos do |t|
      t.integer :user_id
      t.integer :combo_id
      t.float :total_price
      t.boolean :upgrade
      t.float :discount, :default => 0

      t.timestamps
    end
  end
end
