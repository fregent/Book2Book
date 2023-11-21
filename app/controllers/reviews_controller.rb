class ReviewsController < ApplicationController
<<<<<<< HEAD

  def create
    @review = Review.new(params_review)
    @book = Book.find(params[:book_id])
=======
  before_action :authenticate_user!
  
  def create
    @book = Book.find(params[:book_id])
    @review = Review.new(review_params)
>>>>>>> master
    @review.book = @book
    if @review.save
      redirect_to book_path(@book)
    else
<<<<<<< HEAD
      render "books/show"
    end
=======
      render "books/show", status: :unprocessable_entity
    end

>>>>>>> master
  end

  private

    def review_params
      params.require(:review).permit(:rating, :content)
    end
end
