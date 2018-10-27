class CreateTechnicalPages < ActiveRecord::Migration[5.2]
  def change
    create_table :technical_pages do |t|

      t.timestamps
    end
  end
end
