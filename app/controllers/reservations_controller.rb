class ReservationsController < ApplicationController
  before_action :set_offer, only: [:new, :create]

  def index
    # @reservations = Reservation.all
    start_date = params.fetch(:date, Date.today).to_date


    # Offre créée par le User senior
    @my_offers = Offer.where(user: current_user)

    # reservation faite par le User junior avec le statut en refuse
    @denied_reservations = policy_scope(Reservation).where(status: "denied")

    # les reservations refusees par le User senior
    @my_denied_reservations = Reservation.where(offer: @my_offers).where(status: "denied")

    # reservation faite par le User junior avec le statut en attente
    @reservations_booking = policy_scope(Reservation).where(status: "pending")

    # les reservations en attente de validation par le User senior
    @my_reservations = Reservation.where(offer: @my_offers).where(status: "pending")

    # reservation faite par le User junior avec le statut "valide"
    @validated_reservations = policy_scope(Reservation).where(status: "accepted")
    # les reservations validees par le User senior
    @my_validated_reservations = Reservation.where(offer: @my_offers).where(status: "accepted")

  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.offer = @offer
    @reservation.user = current_user
    if @reservation.save
      # @reservation.status = "En attente de validation"
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
