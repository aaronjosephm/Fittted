class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :destroy, :edit]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
   @outfit = Outfit.new
   authorize @outfit
  end

  def create
    @outfit = Outfit.new(outfit_params)
    authorize @outfit
    @outfit.user_id = current_user[:id]
    if @outfit.save
      redirect_to profile_outfits_url
    else
      render :new
    end
  end

  def index
    @outfits = policy_scope(Outfit).where(theme: params[:theme])
  end

  def show
    # raise
    authorize @outfit
  end

  def update
    @outfit = Outfit.find(params[:id])
    authorize @outfit
    if @outfit.update(outfit_params)
      redirect_to profile_outfits_url
    else
      render :edit
    end
  end

  def edit
    @outfit = Outfit.find(params[:id])
  end

  def destroy
    @outfit.destroy
    redirect_to profile_outfits_url
  end

  private

  def set_outfit
    @outfit = Outfit.find(params[:id])
    authorize @outfit
  end

  def outfit_params
    params.require(:outfit).permit(:name, :price, :description, :theme, :photo)
  end

end








