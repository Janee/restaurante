ActiveAdmin.register Restaurante do

	permit_params :name, :description, :address, :phone,
    	dish_attributes: [:id, :name, :description, :price, :photo, :_destroy]

    form do |f|
    	f.inputs "Restaurante" do
    		f.input :name
		    f.input :description
		    f.input :address
		    f.input :phone
    	end
	    
	   f.actions
  	end

end
