class CreateOrders < ActiveRecord::Migration[5.2]
  def change
 	create_table :orders do |t|
  		t.string :orders_input
  		t.text :name
  		t.text :phone
  		t.text :address

  		t.timestamps
  	end  	
  end
end
