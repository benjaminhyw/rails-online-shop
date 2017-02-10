class Order < ApplicationRecord
  belongs_to :users
  serialize :user_id
end
