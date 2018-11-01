class AddColumnsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :title, :text
    add_column :quotes, :author, :string
    add_column :quotes, :background, :text
  end
end
