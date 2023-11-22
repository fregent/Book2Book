class BooksController < ApplicationController

  def index
    @books = Book.all
    @book = Book.new
    @user = current_user
    @user_books = current_user.books
  end

  def new
    @book = Book.new
    @user = current_user
  end

  def create
    @book = Book.new(params_book)
    @book.user = current_user
    if @book.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
    @user = current_user
    @user_book = @book.user
    @reservation = Reservation.new
    @review = Review.new
    @reviews = @book.reviews
  end

  def edit
    @book = Book.find(params[:id])
    @user = current_user
  end

  def update
    @book = Book.find(params[:id])
    @user = current_user
    @book.update(params_book)
    redirect_to root_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to root_path
  end
end
