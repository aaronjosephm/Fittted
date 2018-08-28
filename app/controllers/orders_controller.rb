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
    @markers =
      {
        lat: current_user.latitude,
        lng: current_user.longitude
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    @orders = Order.where(user_id: current_user.id)
    authorize @orders
    policy_scope(Order).where(user_id: current_user.id)

  end

  def show
    @order = current_user.cart
    authorize @order

    @order.amount_cents = Item.joins(order_outfit_items: { order_outfit: :order }).where(orders: { id: @order.id }).sum(:price_cents)
    @order.save
    @order_outfits = policy_scope(OrderOutfit).where(order_id: @order.id)
    @outfits = policy_scope(Outfit).all
    @order_outfit_items = policy_scope(OrderOutfitItem).all
    @total_price = 0
    @order_outfits.all.each do |orderOutfit|
      @total_price += Outfit.where(id: orderOutfit.outfit_id).inject(0){ |sum,e| sum + e.price.to_i }
    end
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
    redirect_to order_all_path
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
