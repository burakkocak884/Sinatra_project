class CreateProperties < ActiveRecord::Migration
  def change
  	create_table :properties do |pro|
  		pro.string :name
  		pro.string :location
  		pro.integer :capacity
  		pro.integer :owner_id
  		
  	end
  end
end
