class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    #TODO: current userのbookのみを表示
    @books = Book.all
  end

  def edit
  end

  private

  def user_params
    #TODO: permitの再確認
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end
end
