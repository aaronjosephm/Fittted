class Order < ApplicationRecord
  belongs_to :user
  has_many :order_outfits

  monetize :amount_cents
end
