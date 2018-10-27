class CreateInstallationSubPages < ActiveRecord::Migration[5.2]
  def change
    create_table :installation_sub_pages do |t|

      t.timestamps
    end
  end
end
