class OutfitsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @outfits = policy_scope(Outfit).where(theme: params[:theme])
    # @theme = params[:theme]

  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
