class Category < ApplicationRecord
  has_and_belongs_to_many :items

  serialize :item_id
end
