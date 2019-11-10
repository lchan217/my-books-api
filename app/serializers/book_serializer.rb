class BookSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :title, :rating, :num_ratings, :pages, :genre, :review
  belongs_to :author
end
