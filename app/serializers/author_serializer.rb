class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :num_books
  has_many :books
end
