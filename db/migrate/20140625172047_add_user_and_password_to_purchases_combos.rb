class AddUserAndPasswordToPurchasesCombos < ActiveRecord::Migration
  def change
    add_column :purchases_combos, :user_name, :string
    add_column :purchases_combos, :password, :string
  end
end
