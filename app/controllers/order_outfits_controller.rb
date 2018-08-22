class OrderOutfitsController < ApplicationController
  before_action :set_order_outfit, only: [:show, :destroy, :edit]

  def new
    @order_outfit = OrderOutfit.new
  end

  def create
    @order_outfit = OrderOutfit.new(order: current_user.cart, outfit: Outfit.find(params[:outfit_id]))

    authorize @order_outfit

    params[:outfit_items].each do |outfitItem|
      order_outfit_item = OrderOutfitItem.new(item: Item.find(outfitItem[0]), order_outfit: @order_outfit, size: outfitItem[1])
      order_outfit_item.save
    end

    if @order_outfit.save
      puts "order_outfit has been saved."
      flash[:order_added] = true
      redirect_to outfit_path(@order_outfit.outfit)
      # redirect somewhere, maybe same page ? and set a flash[:order_added] = true
      # somewhere in the page where you redirect, "<% if flash[:order_added] %> <!-- code for popup --> <% end %>""
    else
      puts "order_outfit hasn't been saved."
      # back to form, display errors
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
end
