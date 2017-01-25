require 'bcrypt'

class User < ApplicationRecord
  attr_accessor :remember_token

  validates :username, presence: { message: "Username field can't be left blank"}, length: { in: 4..15, message: 'Username must be between 4-15 characters in length' }, uniqueness: { message: 'Username is already taken'}
  # email validation still needs email format validation
  validates :email, presence: { message: "Email can't be left blank" }, uniqueness: { message: "Email is already taken"}
  validates :password, presence: { message: "Password field can't be left blank" }, length: { in: 4..10, message: "Password must be between 4-15 characters in length" }

  has_secure_password validations: false

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for us in persistent sessions
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest
  def authenticated?(remember_token)
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
end
