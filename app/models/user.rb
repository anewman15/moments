class User < ApplicationRecord
  has_secure_token

  validates :username, presence: true, uniqueness: true, length: { in: 5..15 }
end
