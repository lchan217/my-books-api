class BookSerializer < ActiveModel::Serializer
  attributes :id, :author_id, :title, :rating, :num_ratings, :pages, :genre, :review, :img, :author, :user_id
  # belongs_to :author
  belongs_to :user
end
