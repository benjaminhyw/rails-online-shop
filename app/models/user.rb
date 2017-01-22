require 'bcrypt'

class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..15, length_message: 'Username must be between 4-15 characters in length' }, uniqueness: true
  # email validation still needs email format validation
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 4..10 }

  has_secure_password
end
