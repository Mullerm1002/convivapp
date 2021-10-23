class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.save!
    redirect_to offer_path(@offer)
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.update(offer_params)

    redirect_to offer_path(@offer)
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy

    redirect_to offers_path
  end

  private

  def offer_params
    params.require(:offer).permit(:title, :address, :date, :description, :image, :meal)
  end
end
