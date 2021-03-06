class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @offers = policy_scope(Offer)
    if params[:query].present?
      @offers = Offer.where("title ILIKE ?", "%#{params[:query]}%") + Offer.tagged_with(params[:query])
    else
      @markers = Offer.where.not(latitude: nil, longitude: nil).map do |offer|
        {
          lat: offer.latitude,
          lng: offer.longitude,
          info_window: render_to_string(partial: "info_window", locals: { offer: offer }),
          image_url:
            if offer.user.avatar.attached?
              if Rails.env.production?
                helpers.asset_url("https://res.cloudinary.com/convivapp/image/upload/v1636813977/production/#{offer.user.avatar.key}.jpg")
              else
                helpers.asset_url("https://res.cloudinary.com/convivapp/image/upload/v1636813977/development/#{offer.user.avatar.key}.jpg")
              end
            else
              helpers.asset_url("user.png")
            end
        }
      end
    end
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.tag_list = params[:offer][:tag_list]
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
    params.require(:offer).permit(:title, :address, :date, :description, :photo, :name, :tag_list)
  end
end
