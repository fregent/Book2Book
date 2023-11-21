class ReviewsController < ApplicationController

  def create
    @review = Review.new(params_review)
    @book = Book.find(params[:book_id])
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      render "books/show"
    end
  end
end
