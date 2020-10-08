class EntrySerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :word

  has_one :user
  has_one :word

end
