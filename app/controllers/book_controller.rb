class BookController < ApplicationController
  def index
    user = User.find(session[:user_id])
    all_books = user.books.uniq
    @books = all_books.sort_by {|book| book.title.downcase}
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
