class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :entries, :comments

  
end
