class User < ApplicationRecord
  has_many :orders
  after_create(:create_empty_cart)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def create_empty_cart
    order = Order.new(status: "pending")
    order.user = self
    order.save
  end

  def cart
    self.orders.find_by(status: "pending") || self.orders.create(status: 'pending')
  end
end
