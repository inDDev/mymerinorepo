class CreateProductFamilies < ActiveRecord::Migration[5.2]
  def change
    create_table :product_families do |t|
      t.string :name
      t.boolean :is_featured_on_home

      t.timestamps
    end
  end
end
