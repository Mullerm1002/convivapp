class ReservationsController < ApplicationController
  before_action :set_offer, only: [:new, :create]
  skip_after_action :verify_authorized

  def index
    # @reservations = Reservation.all
    start_date = params.fetch(:date, Date.today).to_date


    # Offre créée par le User senior
    @my_offers = Offer.where(user: current_user)

    @my_pending_offers = @my_offers.joins(:reservation).where(reservation: {status: "pending"})

    @reservations =
      policy_scope(Reservation)
        .joins(:offer)
        .where(user_id: current_user.id)
        .or(Reservation.joins(:offer).where(offer: { user_id: current_user.id }))
  end
 
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new
    @reservation.offer = @offer
    @reservation.user = current_user
    user_senior = @reservation.offer.user
    user_junior = @reservation.user
    if @reservation.save
      @chatroom = Chatroom.find_or_create_by(
        name: "#{user_senior.full_name} & #{user_junior.full_name}",
        user_senior: user_senior,
        user_junior: user_junior
      )
      redirect_to reservations_path and return
      # @reservation.status = "En attente de validation"
      # redirect_to reservations_path
    else
      render "reservations/show"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to reservations_path()
  end

  def edit
  end

  # def update
  #   @reservation = Reservation.find(params[:id])
  #   @reservation.status = params[:reservation][:status]
  #   @reservation.save
  #   authorize @reservation
  #   user_senior = @reservation.offer.user
  #   user_junior = @reservation.user
  #   if @reservation.accepted?
  #     @chatroom = Chatroom.find_or_create_by(
  #       name: "#{user_senior.full_name} & #{user_junior.full_name}",
  #       user_senior: user_senior,
  #       user_junior: user_junior
  #     )
  #     redirect_to chatroom_path(@chatroom) and return
  #   end
  #   # TODO : redirect to a proper view
  #   redirect_to root_path
  # end

  def validate
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.status = "accepted"
    @reservation.save
    redirect_to reservations_path
  end

  def deny
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.status = "denied"
    @reservation.save
    redirect_to reservations_path
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
