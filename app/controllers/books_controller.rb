class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end
  
  def show
   id = params[:id] #=> id = 1
   @book = Book.find(id)
  end
end
