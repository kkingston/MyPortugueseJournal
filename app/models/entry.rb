class Entry < ApplicationRecord
  belongs_to :word
  belongs_to :user
  has_many :comments
end
