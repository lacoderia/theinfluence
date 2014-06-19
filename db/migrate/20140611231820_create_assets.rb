# -*- encoding : utf-8 -*-
class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :product_id
      t.string :url
      t.string :url_thumb
      t.string :name

      t.timestamps
    end
  end
end
