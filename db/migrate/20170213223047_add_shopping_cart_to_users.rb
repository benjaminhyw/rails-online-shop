class AddShoppingCartToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :shopping_cart, :text, :array => true, :default => [].to_yaml
  end
end
