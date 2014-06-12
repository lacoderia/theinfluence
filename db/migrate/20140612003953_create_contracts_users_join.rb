class CreateContractsUsersJoin < ActiveRecord::Migration
  def up
	  create_table :contracts_users, :id => false do |t|
		  t.references :contract, :user
  	end
  end

  def down
	  drop_table :contracts_users
  end

end
