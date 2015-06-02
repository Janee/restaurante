class Dish < ActiveRecord::Base
  belongs_to :restaurante

  has_attached_file :photo, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"]}
end
