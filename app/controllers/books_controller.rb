class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    id = params[:id] #=> id = 1
    @book = Book.find(id)
  end

  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
     
    if @book.save
                  # "/books , ページに「本の保存に～」を表示"
      redirect_to books_path, notice: '本の保存に成功しました。'
    else
      # 入力した情報を残したままもう一度入力させる画面を表示
      render action: :new
    end
  end
   
  private
   
  def book_params
    params.require(:book).permit(:title, :author, :published_date, :publisher)
  end
end