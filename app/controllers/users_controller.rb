class UsersController < ApplicationController
  def show
    @user = Books.find(params[:id])
    @books = @user.books
  end

  def edit
  end
end
