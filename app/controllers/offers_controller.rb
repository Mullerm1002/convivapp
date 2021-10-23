class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  
  def index
    @offers = Offer.all.select { |offer| offer.reservation.nil? || "en attente de validation" }
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.save!
    redirect_to offer_path(@offer)
  end

  def edit
  end

  def show
  end

  def update
    @offer.update(offer_params)

    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy

    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :address, :date, :description, :image, :meal)
  end

  def set_offer
    @offer = Offer.find(params[:id])
  end
end
