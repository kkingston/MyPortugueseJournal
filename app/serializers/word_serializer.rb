class WordSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :pos
end
