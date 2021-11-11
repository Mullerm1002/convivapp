class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = policy_scope(Offer)
    @markers = Offer.where.not(latitude: nil, longitude: nil).map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer })
      }
    end
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer), notice: "L'invitation a été créée avec succès !"
    else
      render :new
    end
  end

  def edit
  end

  def show
    @offer = Offer.find(params[:id])
    @user = current_user
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer), notice: "L'invitation a été modifiée avec succès !"
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy

    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:title, :address, :date, :description, :photo, :meal)
  end
end
