class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy, :edit]

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

  end

  def update
  end

  def edit
  end

  def destroy
    @order.destroy
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id)
  end
end
