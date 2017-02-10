class AddCartToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cart, :text, :array => true, :default => [].to_yaml
  end
end
