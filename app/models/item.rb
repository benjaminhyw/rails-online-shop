class Item < ApplicationRecord
  validates :name, presence: { message: "Name field can't be left blank"}, length: { in: 3..64, message: "Name must be between 3 and 64 characters in length" }
  validates :description, presence: { message: "Description field can't be left blank" }, length: { in: 3..3000, message: "Description must be between 3 and 3,000  characters" }
  validates :quantity, presence: { message: "Quantity field can't be left blank" }, numericality: { greater_than: 0, message: "Must be an integer greater than 0" }
  # Price validation needs it to be in legit $10.99 value format
  validates :price, presence: { message: "Price field can't be left blank"}
end
