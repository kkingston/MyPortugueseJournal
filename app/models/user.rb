class User < ApplicationRecord
  has_many :words
  has_many :entries, through: :words
end
