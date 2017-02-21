class Order < ApplicationRecord
  belongs_to :users
  serialize :user_id
  serialize :item_id
  has_many :items
end
