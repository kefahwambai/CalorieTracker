class User < ApplicationRecord
  has_many :activities
  has_many :goals
  has_secure_password

  validates :username, presence: true, uniqueness: true
end
