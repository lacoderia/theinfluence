class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.integer :product_id
      t.string :url
      t.string :utl_thumb
      t.string :name

      t.timestamps
    end
  end
end