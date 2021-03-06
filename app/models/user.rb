class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15}
  has_many :messages, dependent: :destroy
  has_secure_password
end
