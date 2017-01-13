class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end
end
