class User < ApplicationRecord
  has_many :orders
  after_create(:create_empty_cart)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def create_empty_cart
    order = Order.new(status: "pending")
    order.user = self
    order.save
  end

  def cart
    return self.orders.find_by(status: "pending")
  end
end
