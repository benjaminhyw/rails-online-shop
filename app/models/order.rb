class Order < ApplicationRecord
  belongs_to :user, optional: true
  serialize :item_id
  has_many :items
end
