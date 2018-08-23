class PaymentsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    authorize(@order)

    @order.amount_cents = Item.joins(order_outfit_items: { order_outfit: :order }).where(orders: { id: @order.id }).sum(:price_cents)
    @order.save
  end

  def create
    @order = Order.find(params[:order_id])
    authorize(@order)

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @order.amount_cents,
      description:  "Payment for teddy ",
      currency:     @order.amount.currency
    )

    @order.update(status: 'paid')
    redirect_to order_show_path(@order)

  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_payment_path(@order)
  end
end
