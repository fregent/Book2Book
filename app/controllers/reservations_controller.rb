class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    @user = current_user
    @reservations = current_user.reservations
  end

  def show
    @reservation = current_user.reservations.find(params[:id])
  end

  def new
    @reservation = Reservation.new
    @book = Book.find(params[:book_id])
    @user = current_user
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @book = Book.find(params[:book_id])
    @reservation.book = @book
    @reservation.user = current_user
    if @reservation.save
      redirect_to book_reservation_path(@book, @reservation)
    else
      render "books/show"
    end
  end


    private

  def reservation_params
    params.require(:reservation).permit(:duration_start, :duration_end)
  end

end
