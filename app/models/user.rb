class User < ApplicationRecord
  has_many :words, through: :entries
  has_many :entries, dependent: :destroy
  has_many :comments, through: :entries

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
