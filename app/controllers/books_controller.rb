class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to user_path(current_user)
    else
      #TODO: エラーメッセージの実装
      #render :new
    end
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def book_params
      params.require(:book).permit(:title, :body)
  end
end
