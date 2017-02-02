class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :product_id, :array => true

      t.timestamps
    end
  end
end
