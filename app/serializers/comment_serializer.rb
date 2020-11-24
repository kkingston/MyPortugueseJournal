class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :date, :entry_id, :user_id
end
