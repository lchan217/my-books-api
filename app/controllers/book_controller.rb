class BookController < ApplicationController
  def index
    @books = Book.all
    render json: @books, status: 201
  end

  def create
    book = Book.create(book_params)
    render json: book
  end

  def book_params
     params.require(:book).permit(:author_id, :title, :rating, :num_ratings, :pages, :genres, :review)
  end
end
