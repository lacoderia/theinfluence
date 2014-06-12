# -*- encoding : utf-8 -*-
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.text :benefits
      t.boolean :active
      t.string :short_description

      t.timestamps
    end
  end
end
