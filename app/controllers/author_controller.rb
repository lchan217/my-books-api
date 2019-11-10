class AuthorController < ApplicationController
  def index
    @authors = Author.all
    render json: @authors, status: 201
  end

  def create
    author = Author.create(author_params)
    render json: author
  end

  def author_params
     params.require(:author).permit(:name, :num_books)
  end
end
