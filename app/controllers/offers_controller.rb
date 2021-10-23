class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def udpate
  end

  def destroy
  end
end
