class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    @book = @reservation.book
    @user = current_user
  end

  def new
    @reservation = Reservation.new
    @book = Book.find(params[:book_id])
    @user = current_user
  end

  def create
    @reservation = Reservation.new(params_reservation)
    @book = Book.find(params[:book_id])
    @reservation.book = @book
    @reservation.user = current_user
    if @reservation.save
      redirect_to book_path(@book)
    else
      render "books/show"
    end
  end
end
