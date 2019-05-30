class AddProducts < ActiveRecord::Migration[5.2]
  def change
  	Product.create ({
  		:title => 'Hawaiian',   		
  		:description => 'This is Hawaiian pizza',    		
  		:price => 350,  		
  		:size => 30,  		
  		:is_spicy	=> false,  		
  		:is_veg	=> false,  		
  		:is_best_offer	=> false,  		
  		:path_to_image => '/images/neo.jpg'
  	})

  	Product.create ({  		
  		:title => 'Peperoni',   		
  		:description => 'This is Peperoni pizza',    		
  		:price => 400,  		
  		:size => 30,  		
  		:is_spicy	=> false,  		
  		:is_veg	=> false,  		
  		:is_best_offer	=> true,  		
  		:path_to_image => '/images/pep.jpg'
  	})

  	Product.create ({
  		:title => 'Vegeterian',   		
  		:description => 'Nice Vegeterian pizza',    		
  		:price => 450,  		
  		:size => 30,  		
  		:is_spicy	=> false,  		
  		:is_veg	=> true,  		
  		:is_best_offer	=> false,  		
  		:path_to_image => '/images/veg.jpg'
		})
  end
end
