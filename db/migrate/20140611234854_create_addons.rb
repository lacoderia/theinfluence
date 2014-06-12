# -*- encoding : utf-8 -*-
class CreateAddons < ActiveRecord::Migration
  def change
    create_table :addons do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
