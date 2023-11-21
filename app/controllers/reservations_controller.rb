class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
<<<<<<< HEAD
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
    @book = @reservation.book
    @user = current_user
=======
    @reservations = current_user.reservations
  end

  def show
    @reservation = current_user.reservations.find(params[:id])
>>>>>>> master
  end

  def new
    @reservation = Reservation.new
<<<<<<< HEAD
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
=======
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: 'Your book has been booked!'
    else
      render :new, status: :unprocessable_entity
>>>>>>> master
    end
  end

    private

  def reservation_params
    params.require(:reservation).permit(:duration_start, :duration_end, :book_id)
  end

end
