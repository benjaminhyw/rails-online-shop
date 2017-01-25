require 'bcrypt'

class User < ApplicationRecord
  validates :username, presence: { message: "Username field can't be left blank"}, length: { in: 4..15, message: 'Username must be between 4-15 characters in length' }, uniqueness: { message: 'Username is already taken'}
  # email validation still needs email format validation
  validates :email, presence: { message: "Email can't be left blank" }, uniqueness: { message: "Email is already taken"}
  validates :password, presence: { message: "Password field can't be left blank" }, length: { in: 4..10, message: "Password must be between 4-15 characters in length" }

  has_secure_password validations: false

  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end
end
