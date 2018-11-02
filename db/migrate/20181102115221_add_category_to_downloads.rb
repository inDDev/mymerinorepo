class AddCategoryToDownloads < ActiveRecord::Migration[5.2]
  def change
    add_reference :downloads, :category, foreign_key: true
  end
end
