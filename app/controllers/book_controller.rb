class BookController < ApplicationController
  before_action :authenticate_user #make sure JSON web token is valid

  def index
    # if current_user
      @books = current_user.books
      render json: @books, status: 201
    # end
  end

  def create
    book = Book.create(book_params)
    render json: book
  end

  def book_params
     params.require(:book).permit(:author_id, :user_id, :title, :rating, :num_ratings, :pages, :genres, :review)
  end
end
