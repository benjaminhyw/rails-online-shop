class Item < ApplicationRecord
  validates :name, presence: { message: "Name field can't be left blank"}, length: { in: 3..64, message: "Name must be between 3 and 64 characters in length" }
end
