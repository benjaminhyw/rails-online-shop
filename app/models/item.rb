class Item < ApplicationRecord
  validates :name, presence: { message: "Name field can't be left blank"}, length: { in: 3..64, message: "Name must be between 3 and 64 characters in length" }
  validates :description, presence: { message: "Description field can't be left blank" }, length: { in: 3..3000, message: "Description must be between 3 and 3,000  characters" }
end
