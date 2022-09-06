class UsersController < ApplicationController
   before_action :correct_user, only: [:edit, :update]


  def index
    @user = User.new
    @users = User.all
    @user = current_user
    @book = Book.new
  end


  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      @users = User.all
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :image)
  end

end

  def correct_user
    @user = User.find(params[:id])
    @books = @user.books
    redirect_to(user_path) unless @user == current_user
  end