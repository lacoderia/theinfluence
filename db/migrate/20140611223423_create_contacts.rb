# -*- encoding : utf-8 -*-
class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :business
      t.string :phone

      t.timestamps
    end
  end
end
