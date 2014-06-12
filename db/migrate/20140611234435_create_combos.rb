# -*- encoding : utf-8 -*-
class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.integer :product_id
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
