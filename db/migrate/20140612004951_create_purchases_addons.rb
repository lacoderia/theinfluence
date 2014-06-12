# -*- encoding : utf-8 -*-
class CreatePurchasesAddons < ActiveRecord::Migration
  def change
    create_table :purchases_addons do |t|
      t.integer :addon_id
      t.integer :user_id
      t.integer :quantity
      t.float :total_price

      t.timestamps
    end
  end
end
