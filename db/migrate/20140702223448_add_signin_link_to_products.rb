class AddSigninLinkToProducts < ActiveRecord::Migration
  def change
    add_column :products, :signin_link, :string
  end
end
