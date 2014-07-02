class AddFootnoteToProducts < ActiveRecord::Migration
  def change
    add_column :products, :footnote, :text
  end
end
