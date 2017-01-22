require 'bcrypt'

class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..15 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 4..10 }

  has_secure_password
end
