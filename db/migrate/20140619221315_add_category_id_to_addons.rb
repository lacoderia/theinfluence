class AddCategoryIdToAddons < ActiveRecord::Migration
  def change
    add_column :addons, :category_id, :integer
  end
end
