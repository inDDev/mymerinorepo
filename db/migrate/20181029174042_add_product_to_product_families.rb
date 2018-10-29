class AddProductToProductFamilies < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_families, :product, foreign_key: true
  end
end
