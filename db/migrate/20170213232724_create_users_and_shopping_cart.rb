class CreateUsersAndShoppingCart < ActiveRecord::Migration[5.0]
  def change
    create_table :users_shopping_carts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :shopping_cart, index: true
    end
  end
end
