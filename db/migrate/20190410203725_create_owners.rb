class CreateOwners < ActiveRecord::Migration
  def change
  	create_table :owners do |owner|
  		owner.string :username
  		owner.string :email
  		owner.string :password_digest
  	end

  end
end
