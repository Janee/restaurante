class Restaurante < ActiveRecord::Base
	has_many :dishes
  	accepts_nested_attributes_for :dishes, :allow_destroy => true
end
