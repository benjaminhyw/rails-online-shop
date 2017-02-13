class CreateUsersAndOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :users_orders do |t|
      t.belongs_to :user, index: true
      t.belongs_to :order, index: true
    end
  end
end
