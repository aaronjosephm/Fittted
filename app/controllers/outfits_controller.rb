class OutfitsController < ApplicationController
  def new
  end

  def create
  end

  def index
    @theme = params[:theme]
    @outfits = Outfit.all(theme: @theme)
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
