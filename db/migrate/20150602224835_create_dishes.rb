class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.text :name
      t.text :description
      t.decimal :price
      t.attachment :photo
      t.belongs_to :restaurante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
