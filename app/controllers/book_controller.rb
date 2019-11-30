class BookController < ApplicationController
  before_action :authenticate_user #make sure JSON web token is valid
  def index
    # user = User.find(session[:user_id])
    if current_user
      all_books = Book.all
      @books = all_books.sort_by {|book| book.title.downcase}
      render json: @books, status: 201
    end
  end

  def create
    book = Book.create(book_params)
    render json: book
  end

  def book_params
     params.require(:book).permit(:author_id, :title, :rating, :num_ratings, :pages, :genres, :review)
  end
end
