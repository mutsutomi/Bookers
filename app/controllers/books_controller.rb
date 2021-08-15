class BooksController < ApplicationController
  def index
    @lists = Book.all
  end

  def show
    @list = Book.find(params[:id])  
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def edit
  end
  
  private
  def book_params
    params.permit(:title, :body)
  end
end
