class ReviewsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
      render "books/show", status: :unprocessable_entity
    end

  end

  private

    def review_params
      params.require(:review).permit(:rating, :content)
    end
end
