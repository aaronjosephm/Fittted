class OrderOutfitsController < ApplicationController
  before_action :set_order_outfit, only: [:show, :destroy, :edit]

  def new
    @order_outfit = OrderOutfit.new
  end

  def create
    @order_outfit = OrderOutfit.new(order_outfit_params)
    @order_outfit.order = Order.find(params[:order_id])
    @order_outfit.outfit = Outfit.find(params[:outfit_id])
    if @order_outfit.save
      puts "order_outfit has been saved."
    else
      puts "order_outfit hasn't been saved."
    end
  end

  def index
    @order_outfits = OrderOutfit.all(order_id: params[:order_id])
  end

  def show

  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_order_outfit
    @order_outfit = OrderOutfit.find(params[:id])
  end

  def order_outfit_params
    params.require(:order_outfits).permit(:outfit_id, :order_id)
  end
end
