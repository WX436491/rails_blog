class AddDetailsToProducts01 < ActiveRecord::Migration[5.1]
  def change
    add_column :products01s, :price, :decimal, precision: 5, scale: 2
    add_column :products01s, :supplier, :reference{polymorphic}
  end
end
