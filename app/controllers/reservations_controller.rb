class ReservationsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def index
    @reservations = Reservation.all
    @reservations = policy_scope(Reservation)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.offer = @offer
    @reservation.user = current_user
    if @reservation.save
      @reservation.status = "En attente de validation"
      @reservation.save
      redirect_to reservations_path()
    else
      render "reservations/show"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    authorize @reservation
    redirect_to reservations_path()
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :offer_id)
  end

  def set_offer
    @offer = Offer.find(params[:offer_id])
    authorize @offer
  end
end
