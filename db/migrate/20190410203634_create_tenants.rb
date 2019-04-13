class CreateTenants < ActiveRecord::Migration
  def change
  	create_table :tenants do |t|
  		t.string :name
  		t.string :occupation
  		t.integer :property_id
  	end

  end
end
