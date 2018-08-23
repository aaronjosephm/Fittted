class OrdersController < ApplicationController
  before_action :set_order, only: [:destroy, :edit]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = User.find(current_user[:id])
    if @order.save
      puts "order has been saved."
    else
      puts "order hasn't been saved."
    end
  end

  def index
    @orders = Order.all
  end

  def show
    @order = current_user.cart
    authorize @order
    @order_outfits = policy_scope(OrderOutfit).where(order_id: @order.id)
    @outfits = policy_scope(Outfit).all
    @order_outfit_items = policy_scope(OrderOutfitItem).all
  end

  def update
    @order = current_user.cart
    authorize @order
    @order.status = "confirmed"
    @order.save
    current_user.create_empty_cart
    flash[:order_confirmed] = true
    # redirect to payment page for stripe
    redirect_to home_path
  end

  def edit
  end

  def destroy
    @order.destroy
  end

  private

  def set_order
    @order = Order.find(params[:id])
    authorize @order
  end

  def order_params
    params.require(:order).permit(:user_id)
  end
end
