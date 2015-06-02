ActiveAdmin.register Dish do
permit_params :name, :description, :price, :photo
belongs_to :restaurante
	
	form do |f|	
		f.inputs "Dish" do
			f.input :restaurante_id, :as => :select, :collection => Restaurante.all.map{|u| [u.name, u.id]}
	        f.input :name
	        f.input :description
	        f.input :price
	        f.input :photo, :as => :file
		end
	    
	    f.actions
  	end

  	show do |ad|
      attributes_table do
        row :name
        row :photo do
          image_tag(ad.photo.url(:large))
        end
        row :description
        row :price
      end
    end
end
