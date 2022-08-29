class UsersController < ApplicationController

  def index
    @user = User.new
    @users = User.all
    @user = current_user
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to books_path
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.find(params[:id])
  end

  def edit

  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end
