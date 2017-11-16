class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    create_join_table :products, :categories do |t|
      t.index :product_id
      t.index :category_id
    end
    change_table :products do |t|
      t.remove :description, :name
      t.string :part_number
      t.index :part_number
      t.rename :upccode, :upc_code
    end
    change_column :products, :part_number, :text
    end
  end
end

