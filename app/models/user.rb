require 'bcrypt'

class User < ApplicationRecord
  # users.password_hash in the database is a :string
  has_secure_password
end
