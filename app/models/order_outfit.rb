class OrderOutfit < ApplicationRecord
  belongs_to :outfit
  belongs_to :order
  has_many :order_outfit_items, dependent: :destroy
end
