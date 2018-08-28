class Order < ApplicationRecord
  belongs_to :user

  has_many :order_outfits, dependent: :destroy
  monetize :amount_cents
end
