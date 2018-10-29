class AddProductFamilyRefToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :product_family, foreign_key: true
  end
end
