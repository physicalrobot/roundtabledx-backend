class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  #don't serialize users password
  
end
