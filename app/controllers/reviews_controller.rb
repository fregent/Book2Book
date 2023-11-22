class ReviewsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      @reviews = @book.reviews
      @user = current_user
      @user_book = @book.user
      @reservation = Reservation.new
      @reviews = @book.reviews
      render "books/show", status: :unprocessable_entity
    end
  end

    def destroy
      @review = Review.find(params[:id])
      @user = current_user
      @user_destroyer = @review.user

      if @user == @user_destroyer
        @review.destroy
        flash[:notice] = "Review supprimée avec succès."
      end
      redirect_to :book
    end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
