class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :category
      t.string :manufacturer
      t.string :name
      t.string :price
      t.string :upc
      t.timestamps
    end
  end
end
