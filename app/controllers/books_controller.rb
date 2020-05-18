class BooksController < ApplicationController
  before_action :authenticate_user!
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      @user = User.find(current_user.id)
      @users = User.all
      @books = Book.all.sort_by{ |b| b.user_id }
      render :index
    end
  end

  def index
    @user = User.find(current_user.id)
    @users = User.all
    @books = Book.all.sort_by{ |b| b.user_id }
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @new_book = Book.new
    @user = User.find(current_user.id)
  end

  def edit
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
      params.require(:book).permit(:title, :body)
  end
end
