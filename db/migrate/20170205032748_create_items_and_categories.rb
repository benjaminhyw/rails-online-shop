class CreateItemsAndCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :items_categories do |t|
      t.belongs_to :category, index: true
      t.belongs_to :item, index: true
    end
  end
end
