class AddCategoryIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :category_id, :text, :array => true, :default => '{}'
  end
end
