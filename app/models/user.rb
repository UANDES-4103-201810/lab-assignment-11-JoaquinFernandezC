class User < ApplicationRecord
  has_many :messages
  validates :email, :username, uniqueness: true
  validates :username, length: {maximum: 20}
end
