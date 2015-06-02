class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.text :name
      t.text :description
      t.text :address
      t.string :phone

      t.timestamps null: false
    end
  end
end
