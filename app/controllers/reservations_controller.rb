class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.create(reservation_params)
    if verify_recaptcha(model: @reservation) && @reservation.save
      ReservationNotifier.reservation_notifier(@reservation).deliver
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.find(params[:id])
    @reservation.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def reservation_params
      params.require(:reservation).permit(:party, :message)
    end
end
