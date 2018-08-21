class OrderOutfit < ApplicationRecord
  belongs_to :outfit
  belongs_to :order
end
