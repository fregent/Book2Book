class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservations
  end

  def show
    @reservation = current_user.reservations.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: 'Your book has been booked!'
    else
      render :new, status: :unprocessable_entity
    end
  end

    private

  def reservation_params
    params.require(:reservation).permit(:duration_start, :duration_end, :book_id)
  end

end
