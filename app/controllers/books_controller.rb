class BooksController < ApplicationController

  def index
    @book = Book.new

  end

  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    book = Book.new(book_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # 4. トップ画面へリダイレクト
    redirect_to '/'
  end

  def edit

  end

  def show
  end

private

  def book_params
    params.require(:book).permit(:title, :body,:image)
  end

end
