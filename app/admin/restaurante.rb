ActiveAdmin.register Restaurante do

	permit_params :name, :description, :address, :phone,
    	dish_attributes: [:id, :name, :description, :price, :photo, :_destroy]
    sidebar "Restaurante Details", only: [:show, :edit] do
	    ul do
	      li link_to "Dishes", admin_restaurante_dishes_path(restaurante)
	    end
	end
    
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
