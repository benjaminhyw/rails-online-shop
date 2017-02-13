class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.text :item_id, :array => true, :default => [].to_yaml

      t.timestamps
    end
  end
end
