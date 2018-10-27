class CreatePerformanceSubPages < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_sub_pages do |t|

      t.timestamps
    end
  end
end
