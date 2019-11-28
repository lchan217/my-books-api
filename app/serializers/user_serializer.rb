class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :name
  has_many :books
end
