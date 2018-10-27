class CreateManufacturingSubPages < ActiveRecord::Migration[5.2]
  def change
    create_table :manufacturing_sub_pages do |t|

      t.timestamps
    end
  end
end
