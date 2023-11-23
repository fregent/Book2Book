class BooksController < ApplicationController

      def index
        @books = if params[:query].present?
          Book.search_by_title_and_author(params[:query])
        else
          Book.all
        end
        @book = Book.new
        @user = current_user
        @user_books = @user.books
        @book_counter = @books.count
      end

      def my_books
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
          redirect_to root_path(@book)
        else
          render :new, status: :unprocessable_entity
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
        @user = current_user
        @book.destroy
        redirect_to root_path

      end



      private

      def params_book
        params.require(:book).permit(:title, :author, :published_year, :reservation_price, :description)
      end
end
