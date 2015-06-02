ActiveAdmin.register Restaurante do

permit_params :name, :description, :address, :phone,
    dish_attributes: [:id, :name, :description, :price, :photo, :_destroy]


end
