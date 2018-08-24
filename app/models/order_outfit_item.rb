class OrderOutfitItem < ApplicationRecord
  belongs_to :order_outfit
  belongs_to :item
end
