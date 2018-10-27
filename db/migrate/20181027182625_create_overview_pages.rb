class CreateOverviewPages < ActiveRecord::Migration[5.2]
  def change
    create_table :overview_pages do |t|

      t.timestamps
    end
  end
end
