class CreateDesignPages < ActiveRecord::Migration[5.2]
  def change
    create_table :design_pages do |t|

      t.timestamps
    end
  end
end
