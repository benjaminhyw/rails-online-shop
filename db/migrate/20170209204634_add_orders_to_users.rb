class AddOrdersToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :orders, :text, :array => true, :default => [].to_yaml
  end
end
