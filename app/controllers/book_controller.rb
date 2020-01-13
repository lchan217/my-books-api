class BookController < ApplicationController
  before_action :authenticate_user #make sure JSON web token is valid
  # before_action :authenticate_user!, except: [:new, :create]
  def index
    if current_user
      @books = current_user.books
      render json: @books, status: 201
    end
  end

  def create
    if current_user
      id = current_user.id
      book = Book.new(user_id: id)
      if book.update(book_params) 
        render json: book
      end
    end
  end

  def update 
    # book = Book.find(params[])
    # if book.update(book_params)
    #   render json: book
    # end
    byebug
  end 

  def destroy
    Book.find( params[:_json]).destroy
  end 

  def book_params
     params.require(:book).permit(:author_id, :author, :user_id, :title, :rating, :num_ratings, :pages, :genres, :img, :review)
  end
end
