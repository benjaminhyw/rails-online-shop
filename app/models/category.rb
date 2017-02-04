class Category < ApplicationRecord
  attr_accessor :product_id
  has_and_belongs_to_many :items

  serialize :product_id, Array
end
